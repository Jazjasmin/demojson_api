import 'package:bloc/bloc.dart';
import 'package:demo_json_pjct/models/product_model/product_model.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:demo_json_pjct/const_value/failure/main_failure.dart';
import 'package:demo_json_pjct/services/service.dart';
import 'package:injectable/injectable.dart';

part 'productblocmodel_event.dart';
part 'prductblocmodel_state.dart';
part 'productblocmodel_bloc.freezed.dart';


@injectable
class ProductblocmodelBloc extends Bloc<ProductblocmodelEvent, ProductblocmodelState> {
  final ProductApiService _productApiService;
  ProductblocmodelBloc(this._productApiService) : super(ProductblocmodelState.initial()) {
    
    on<ProductblocmodelEvent>((event, emit) async{
      if(state.idleList.isNotEmpty) {
        emit(ProductblocmodelState(
          searchResultList: [],
          idleList: state.idleList,
          isLoading: false,
          isError: false,
          ));
          return;
      }
      emit( const ProductblocmodelState(
        idleList: [], 
        searchResultList: [],
        isLoading: true, 
        isError: false,
        ));
        final _result= await _productApiService.getNewsInfo();
        final _state = _result.fold(
          (MainFailure r){
            return const ProductblocmodelState(
              idleList: [], 
              searchResultList: [],
              isLoading: false, 
              isError: true,
              );
          }, 
          (List<Product> list) {
            return ProductblocmodelState(
              idleList: list, 
              searchResultList: [],
              isLoading: false, 
              isError: false,
              );
          });
          emit(_state);
     
    });

   on<SearchProduct>((event, emit) async {
      emit(const ProductblocmodelState(
        searchResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      final _result =
          await _productApiService.searchProduct(searchQuery: event.searchQuery);
      final _state = _result.fold(
        (MainFailure f) {
          return const ProductblocmodelState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (ProductModel r) {
          return ProductblocmodelState(
            searchResultList: r.products!,
            idleList: [],
            isLoading: false,
            isError: false,
          );
        },
      );
      //show to ui
      emit(_state);
    });
  
}
}