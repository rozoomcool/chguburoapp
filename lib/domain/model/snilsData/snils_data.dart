import 'package:freezed_annotation/freezed_annotation.dart';

part 'snils_data.freezed.dart';
part 'snils_data.g.dart';

@freezed
class SnilsData with _$SnilsData {
  const factory SnilsData(
      {int? id,
      String? series,

    }) = _SnilsData;

  factory SnilsData.fromJson(Map<String, Object?> json) => _$SnilsDataFromJson(json);
}
