import 'package:demo_json_pjct/const_value/string.dart';
import 'package:json_annotation/json_annotation.dart';



    part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  
   @JsonKey(name: 'products')
  List<Product>? products;



  ProductModel({this.products});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return _$ProductModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}


@JsonSerializable()
class Product {
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'price')
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  @JsonKey(name: 'brand')
  String? brand;
  String? category;
  @JsonKey(name: 'thumbnail')
  String? thumbnail;

 String get posterImageUrl => '$imageAppendUrl$thumbnail';

  List<String>? images;

  Product({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
