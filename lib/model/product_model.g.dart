// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) =>
    ProductsModel(
      json['id'] as int,
      json['name'] as String,
      json['brand'] as String,
      json['image'] as String,
      json['price'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$ProductsModelToJson(ProductsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'image': instance.image,
      'price': instance.price,
      'description': instance.description,
    };
