import 'package:chguburoapp/domain/model/passportData/passport_data.dart';
import 'package:chguburoapp/domain/model/user/user.dart';
import 'package:chguburoapp/domain/model/profile/profile.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../model/innData/inn_data.dart';
import '../../model/profile/profile.dart';
import '../../model/snilsData/snils_data.dart';

class UserCubit extends Cubit<User?> {
  UserCubit() : super(null);

  final Dio _dio = GetIt.I<Dio>();

  Future<void> init() async {
    fetchUser();
  }

  Future<void> fetchUser() async {
    final response = await _dio.get("/user");
    if (response.statusCode == 200) {
      emit(User.fromJson(response.data));
    }
  }

  Future<void> editUser(Profile profile) async {
    final response = await _dio.put("/profile", data: profile);
    if (response.statusCode == 200) {
      await fetchUser();
    }
  }

  Future<void> updateUserPassportData(PassportData data) async {
    // Проверка на наличие состояния и профиля
    if (state != null && state!.profile != null) {
      // Обновляем данные паспорта, если они уже существуют, иначе присваиваем новые
      final updatedPassportData = state!.profile!.passportData != null
          ? state!.profile!.passportData!.copyWith(
              fullname: data.fullname,
              gender: data.gender,
              dateOfBirth: data.dateOfBirth,
              placeOfBirth: data.placeOfBirth,
              series: data.series,
              dateOfIssue: data.dateOfIssue,
              departmentCode: data.departmentCode,
              issuedBy: data.issuedBy,
            )
          : data;

      // Обновляем профиль пользователя с новыми данными паспорта
      final updatedProfile = state!.profile!.copyWith(
        passportData: updatedPassportData,
      );

      final updatedUser = state!.copyWith(profile: updatedProfile);
      await editUser(updatedProfile);
    }
  }

  Future<void> updateUserSnilsData(SnilsData data) async {
    if (state != null && state!.profile != null) {
      final updatedSnilsData = state!.profile!.snilsData != null
          ? state!.profile!.snilsData!.copyWith(
              series: data.series,
            )
          : data;

      final updatedProfile = state!.profile!.copyWith(
        snilsData: updatedSnilsData,
      );

      final updatedUser = state!.copyWith(profile: updatedProfile);

      await editUser(updatedProfile);
    }
  }

  // Новый метод для обновления данных ИНН
  Future<void> updateUserInnData(InnData data) async {
    if (state != null && state!.profile != null) {
      final updatedInnData = state!.profile!.innData != null
          ? state!.profile!.innData!.copyWith(
              series: data.series,
            )
          : data;

      final updatedProfile = state!.profile!.copyWith(
        innData: updatedInnData,
      );
      final updatedUser = state!.copyWith(profile: updatedProfile);
      await editUser(updatedProfile);
    }
  }
}
