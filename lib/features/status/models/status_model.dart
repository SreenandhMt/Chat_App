import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_model.g.dart';
part 'status_model.freezed.dart';

@freezed
class StatusModel with _$StatusModel {
  factory StatusModel({
    required String id,
    required String? image,
    required String? text,
    required dynamic color,
    required dynamic style,
    required String? caption,
    required String type,
    required List<dynamic> views,
    required int publishedAt,
  }) = _StatusModel;

  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      _$StatusModelFromJson(json);
}
