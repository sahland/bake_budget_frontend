import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token_refresh_model.g.dart';

@JsonSerializable()
class TokenRefreshModel extends Equatable {
  const TokenRefreshModel({
    required this.refreshToken,
  });

  final String refreshToken;

  factory TokenRefreshModel.fromJson(Map<String, dynamic> json) =>
      _$TokenRefreshModelFromJson(json);

  Map<String, dynamic> toJson() => _$TokenRefreshModelToJson(this);

  @override
  List<Object> get props => [
        refreshToken,
      ];
}
