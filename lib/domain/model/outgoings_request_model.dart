import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'outgoings_request_model.g.dart';

@JsonSerializable()
class OutgoingsRequestModel extends Equatable {
  const OutgoingsRequestModel({
    required this.name,
    required this.cost,
  });

  final String name;
  final double cost;

  factory OutgoingsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OutgoingsRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$OutgoingsRequestModelToJson(this);

  @override
  List<Object> get props => [
        name,
        cost,
      ];
}
