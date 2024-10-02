import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'password_change_model.g.dart';

@JsonSerializable()
class PasswordChangeModel extends Equatable {
  const PasswordChangeModel({
    required this.oldPassword,
    required this.newPassword,
  });

  final String oldPassword;
  final String newPassword;

  factory PasswordChangeModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordChangeModelFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordChangeModelToJson(this);

  @override
  List<Object> get props => [
        oldPassword,
        newPassword,
      ];
}
