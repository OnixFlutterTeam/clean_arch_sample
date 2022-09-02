// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoResponse _$$_TodoResponseFromJson(Map<String, dynamic> json) =>
    _$_TodoResponse(
      userId: json['userId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      completed: json['completed'] as bool?,
    );

Map<String, dynamic> _$$_TodoResponseToJson(_$_TodoResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
