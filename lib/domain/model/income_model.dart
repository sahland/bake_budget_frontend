import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'income_model.g.dart';

@JsonSerializable()
class IncomeModel extends Equatable {
  const IncomeModel({
    required this.cost,
    required this.income,
  });

  final double cost;
  final double income;

  factory IncomeModel.fromJson(Map<String, dynamic> json) =>
      _$IncomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$IncomeModelToJson(this);

  @override
  List<Object> get props => [
        cost,
        income,
      ];
}
