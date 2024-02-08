
import 'package:demo_json_pjct/const_value/failure/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:demo_json_pjct/product_model/product_model.dart';

abstract class ProductApiService {
  Future<Either<MainFailure, List<Product>>> getNewsInfo();
  Future<Either<MainFailure, ProductModel>> searchProduct({
    required String searchQuery,
  });
}
