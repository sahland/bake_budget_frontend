import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_in_model.g.dart';

@JsonSerializable()
class SignInModel extends Equatable {
  const SignInModel({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  factory SignInModel.fromJson(Map<String, dynamic> json) =>
      _$SignInModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignInModelToJson(this);

  @override
  List<Object> get props => [
        email,
        password,
      ];
}
