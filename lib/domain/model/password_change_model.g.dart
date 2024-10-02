// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_change_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordChangeModel _$PasswordChangeModelFromJson(Map<String, dynamic> json) =>
    PasswordChangeModel(
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$PasswordChangeModelToJson(
        PasswordChangeModel instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };
