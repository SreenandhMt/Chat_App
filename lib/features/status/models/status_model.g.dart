// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatusModelImpl _$$StatusModelImplFromJson(Map<String, dynamic> json) =>
    _$StatusModelImpl(
      id: json['id'] as String,
      image: json['image'] as String?,
      text: json['text'] as String?,
      color: json['color'],
      style: json['style'],
      caption: json['caption'] as String?,
      type: json['type'] as String,
      views: json['views'] as List<dynamic>,
      publishedAt: (json['publishedAt'] as num).toInt(),
    );

Map<String, dynamic> _$$StatusModelImplToJson(_$StatusModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'text': instance.text,
      'color': instance.color,
      'style': instance.style,
      'caption': instance.caption,
      'type': instance.type,
      'views': instance.views,
      'publishedAt': instance.publishedAt,
    };
