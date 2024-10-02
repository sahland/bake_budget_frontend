import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reset_password_model.g.dart';

@JsonSerializable()
class ResetPasswordModel extends Equatable {
  const ResetPasswordModel({
    required this.email,
    required this.newPassword,
  });

  final String email;
  final String newPassword;

  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordModelToJson(this);

  @override
  List<Object> get props => [
        email,
        newPassword,
      ];
}
