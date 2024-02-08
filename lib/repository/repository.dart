import 'package:demo_json_pjct/product_model/product_model.dart';
import 'package:dio/dio.dart';
import 'package:demo_json_pjct/api_key/api_end_point.dart';
import 'package:demo_json_pjct/const_value/failure/main_failure.dart';
import 'package:demo_json_pjct/services/service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductApiService)
class ProductApiRepository implements ProductApiService {   
     @override
     Future<Either<MainFailure, List<Product>>> getNewsInfo() async{
    try{
       final Response response = await Dio(BaseOptions()).get(ApiEndPoints.productList);
       if(response.statusCode == 200 || response.statusCode == 201) {
        final newsmodelList = (response.data['products'] as List).map((e) {
          return Product.fromJson(e);
        }).toList();
        print(newsmodelList);
        return Right(newsmodelList);
       }
     else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
     }
     
       @override
       Future<Either<MainFailure, ProductModel>> searchProduct(
        {required String searchQuery}) async{
        try {
      final Response responseSearch = await Dio(BaseOptions()).get(
          ApiEndPoints.productSearch,
          queryParameters: {'query': searchQuery});
      print("RespoceDio : ${responseSearch}");
      if (responseSearch.statusCode == 200 ||
          responseSearch.statusCode == 201) {
        final result = ProductModel.fromJson(responseSearch.data);
        print("ResultDio : ${result}");
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }


}