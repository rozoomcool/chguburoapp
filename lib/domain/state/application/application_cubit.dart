import 'package:chguburoapp/domain/api/user_application_api_service.dart';
import 'package:chguburoapp/domain/model/userApplication/user_application.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ApplicationCubit extends Cubit<List<UserApplication>> {
  ApplicationCubit() : super([]);

  final UserApplicationApiService _apiService = UserApplicationApiService(GetIt.I<Dio>());

  void init() {
    fetchUserApplications();
  }

  Future<void> fetchUserApplications() async {
    final response = await _apiService.getMyApplications();
    emit(response);
  }
  
}