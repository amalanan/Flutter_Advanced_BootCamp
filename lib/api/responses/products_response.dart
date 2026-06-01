import 'package:advanced_bootcamp_part1/api/responses/product.dart';
import 'package:advanced_bootcamp_part1/api/responses/products.dart';
import 'package:json_annotation/json_annotation.dart';

part 'products_response.g.dart';

@JsonSerializable()
class ProductsResponseDto {
  @JsonKey(name: "products")
  final List<ProductDto>? products;
  @JsonKey(name: "total")
  final int? total;
  @JsonKey(name: "skip")
  final int? skip;
  @JsonKey(name: "limit")
  final int? limit;

  ProductsResponseDto({this.products, this.total, this.skip, this.limit});

  factory ProductsResponseDto.fromJson(Map<String, dynamic> json) {
    return _$ProductsResponseDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProductsResponseDtoToJson(this);
  }
}

