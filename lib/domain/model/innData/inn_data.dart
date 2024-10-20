import 'package:freezed_annotation/freezed_annotation.dart';

part 'inn_data.freezed.dart';
part 'inn_data.g.dart';

@freezed
class InnData with _$InnData {
  const factory InnData(
      {int? id,
      String? series,

    }) = _InnData;

  factory InnData.fromJson(Map<String, Object?> json) => _$InnDataFromJson(json);
}
