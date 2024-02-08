part of 'productblocmodel_bloc.dart';

@freezed
class ProductblocmodelState with _$ProductblocmodelState{
  const factory ProductblocmodelState({
      required List<Product> idleList,
      required List<Product>searchResultList,
      required bool isLoading,
      required bool isError,
  }) = _ProductblocmodelState;

  factory ProductblocmodelState.initial()=> ProductblocmodelState(
    idleList: [], 
    searchResultList: [],
    isLoading: false, 
    isError: false,
    );
}