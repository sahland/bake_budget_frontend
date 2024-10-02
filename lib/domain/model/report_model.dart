import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'report_model.g.dart';

@JsonSerializable()
class ReportModel extends Equatable {
  const ReportModel({
    required this.startCreatedAt,
    required this.endCreatedAt,
    required this.startFinishedAt,
    required this.endFinishedAt,
  });

  final String startCreatedAt;
  final String endCreatedAt;
  final String startFinishedAt;
  final String endFinishedAt;

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReportModelToJson(this);

  @override
  List<Object> get props => [
        startCreatedAt,
        endCreatedAt,
        startFinishedAt,
        endFinishedAt,
      ];
}
