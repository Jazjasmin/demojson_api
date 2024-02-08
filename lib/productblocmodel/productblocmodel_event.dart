part of 'productblocmodel_bloc.dart';

@freezed
class ProductblocmodelEvent with _$ProductblocmodelEvent{
  const factory ProductblocmodelEvent.initialize() = Initialize;
  const factory ProductblocmodelEvent.searchProduct({
    required String searchQuery,
  }) = SearchProduct;
}