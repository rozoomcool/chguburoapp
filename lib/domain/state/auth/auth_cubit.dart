import 'package:chguburoapp/domain/model/auth_request/auth_request.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../repository/shared/auth_shared_repository.dart';
import '../../../utils/custom_scaffold_util.dart';
import '../../model/jwt_payload/jwt_payload.dart';
import '../../model/user/user.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(UnknownAuthState());

  final _authSharedRepository = GetIt.I<AuthSharedRepository>();
  final _scaffoldUtils = GetIt.I<CustomScaffoldUtil>();
  final _dio = GetIt.I<Dio>();

  init() {
    if (_authSharedRepository.getAccessToken().isNotEmpty &&
        _authSharedRepository.getAccessToken() != "") {
      emit(AuthenticatedAuthState());
    }
  }

  Future<void> signIn(AuthRequest user) async {
    try {
      debugPrint(_dio.options.baseUrl);
      var response = await _dio.post("/auth/login",
          data: {"username": user.username, "password": user.password});
      debugPrint(response.requestOptions.path);
      if (response.statusCode == 200) {
        var tokens = JwtPayload.fromJson(response.data);
        _authSharedRepository.setTokens(tokens.access, tokens.refresh);
        GetIt.I<Dio>()
            .options
            .headers
            .addAll({"Authorization": "Bearer ${tokens.access}"});
        _scaffoldUtils.showSnack("Авторизация успешна");
        emit(AuthenticatedAuthState());
      } else {
        _scaffoldUtils
            .showErrorSnack("Произошла ошибка: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint("ERROR SIGN_IN: $e");
      _scaffoldUtils.showErrorSnack("Произошла ошибка авторизации");
    }
  }

  // void signUp(User user) async {
  //   try {
  //     debugPrint(user.toJson().toString());
  //     var response = await _dio.post("/auth/register",
  //         data: {
  //           "username": user.username,
  //           "password": user.password,
  //           "role": user.role!.name.toUpperCase()
  //         });
  //     if (response.statusCode == 201 || response.statusCode == 200) {
  //       // var tokens = JwtPayload.fromJson(response.data);
  //       _scaffoldUtils.showSnack("Регистрация успешна");
  //       // emit(AuthenticatedAuthState());
  //     } else {
  //       _scaffoldUtils.showErrorSnack("Произошла ошибка: ${response.statusCode}");
  //     }
  //   } catch (e) {
  //     debugPrint(e.toString());
  //     _scaffoldUtils.showErrorSnack("Произошла ошибка регистрации");
  //   }
  // }

  void logOut() {
    _authSharedRepository.clear();
    emit(UnauthorizedAuthState());
  }
}
