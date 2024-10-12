import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel extends Equatable {
  const AuthResponseModel({
    required this.token,
    required this.refreshToken,
  });

  final String token;
  final String refreshToken;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    return AuthResponseModel(
      token: json['token'] as String? ?? '', // обработка null
      refreshToken: json['refreshToken'] as String? ?? '', // обработка null
    );
  }

  Map<String, dynamic> toJson() => _$AuthResponseModelToJson(this);

  @override
  List<Object> get props => [
        token,
        refreshToken,
      ];
}
