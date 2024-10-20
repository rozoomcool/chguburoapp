import 'package:chguburoapp/domain/api/user_application_api_service.dart';
import 'package:chguburoapp/domain/model/user/user.dart';
import 'package:chguburoapp/domain/model/userApplication/user_application.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ApplicationCubit extends Cubit<List<UserApplication>> {
  ApplicationCubit() : super([]);

  final UserApplicationApiService _apiService =
      UserApplicationApiService(GetIt.I<Dio>());

  void init() {
    fetchUserApplications();
  }

  Future<void> fetchUserApplications() async {
    final response = await _apiService.getMyApplications();
    emit(response);
  }

  Future<void> fetchTargetApplications(ApplicationStatus status) async {
    final response = await _apiService.getAllApplications(status);
    emit(response);
  }

  Future<void> fetchTarget(Role role) async {
    if (role == Role.STUDENT || role == Role.EMPLOYEE) {
      await fetchUserApplications();
    } else {
      await fetchTargetApplications(role == Role.MODERATOR ? ApplicationStatus.SENT : ApplicationStatus.UNDER_CONSIDERATION);
    }
  }

  Future<void> createApplication(int serviceId) async {
    await _apiService.createApplication(serviceId);
    await fetchUserApplications();
  }

  Future<void> changeStatus(int id, ApplicationStatus status, Role role) async {
    await _apiService.changeApplicationStatus(id, status);
    await fetchTarget(role);
  }
}
