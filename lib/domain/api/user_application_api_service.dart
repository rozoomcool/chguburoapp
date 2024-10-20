import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../model/userApplication/user_application.dart';

class UserApplicationApiService {
  final Dio _dio;

  UserApplicationApiService(this._dio);

  // Получить все заявки пользователя (с фильтрацией по пользователю)
  Future<List<UserApplication>> getMyApplications() async {
    try {
      final response = await _dio.get('application');
      return (response.data as List)
          .map((app) => UserApplication.fromJson(app))
          .toList();
    } on DioException catch (e) {
      debugPrint('Error: ${e.response?.data}');
      throw Exception('Failed to load applications');
    }
  }

  // Получить все заявки по статусу
  Future<List<UserApplication>> getAllApplicationsByStatus(
      String token, ApplicationStatus status) async {
    try {
      final response = await _dio.get(
        'application/a',
        queryParameters: {'status': status.name},
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      return (response.data as List)
          .map((app) => UserApplication.fromJson(app))
          .toList();
    } on DioException catch (e) {
      debugPrint('Error: ${e.response?.data}');
      throw Exception('Failed to load applications');
    }
  }

  // Создание новой заявки
  Future<UserApplication> createApplication(String token, int serviceId) async {
    try {
      final response = await _dio.post(
        'application/a',
        queryParameters: {'serviceId': serviceId},
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      return UserApplication.fromJson(response.data);
    } on DioException catch (e) {
      debugPrint('Error: ${e.response?.data}');
      throw Exception('Failed to create application');
    }
  }

  // Изменить статус заявки
  Future<UserApplication> changeApplicationStatus(
      String token, int appId, ApplicationStatus status) async {
    try {
      final response = await _dio.put(
        'application/a',
        queryParameters: {
          'appId': appId,
          'status': status.name,
        },
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      return UserApplication.fromJson(response.data);
    } on DioException catch (e) {
      debugPrint('Error: ${e.response?.data}');
      throw Exception('Failed to change application status');
    }
  }
}
