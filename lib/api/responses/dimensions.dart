import 'package:advanced_bootcamp_part1/domain/models/dimensions.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dimensions.g.dart';

@JsonSerializable()
class DimensionsDto {
  @JsonKey(name: "width")
  final double? width;
  @JsonKey(name: "height")
  final double? height;
  @JsonKey(name: "depth")
  final double? depth;

  DimensionsDto({this.width, this.height, this.depth});

  factory DimensionsDto.fromJson(Map<String, dynamic> json) {
    return _$DimensionsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DimensionsDtoToJson(this);
  }

 Dimensions toDimensions(){
    return Dimensions(
      width: width,
      height: height,
      depth: depth,
    );
  }
}
