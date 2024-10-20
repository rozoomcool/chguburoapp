import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
class Document with _$Document {
  const factory Document({
    num? id,
    required String filename,
  }) = _Document;

  factory Document.fromJson(Map<String, Object?> json)
      => _$DocumentFromJson(json);
}