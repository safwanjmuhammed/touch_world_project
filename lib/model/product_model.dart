import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductsModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'brand')
  final String brand;

  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'price')
  final String price;

  @JsonKey(name: 'description')
  final String description;

  ProductsModel(
    this.id,
    this.name,
    this.brand,
    this.image,
    this.price,
    this.description,
  );

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsModelToJson(this);
}
