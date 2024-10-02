import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_picture_model.g.dart';

@JsonSerializable()
class GetPictureModel extends Equatable {
  const GetPictureModel({
    required this.minioObjectName,
    required this.link,
  });

  final String minioObjectName;
  final String link;

  factory GetPictureModel.fromJson(Map<String, dynamic> json) =>
      _$GetPictureModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetPictureModelToJson(this);

  @override
  List<Object> get props => [
        minioObjectName,
        link,
      ];
}
