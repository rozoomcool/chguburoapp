import 'package:chguburoapp/app/app.dart';
import 'package:chguburoapp/di/api.dart';
import 'package:chguburoapp/repository/shared/auth_shared_repository.dart';
import 'package:chguburoapp/utils/custom_scaffold_util.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final authSharedRepository = AuthSharedRepository(prefs);

  GetIt.I.registerFactory(() => prefs);
  GetIt.I.registerFactory(() => authSharedRepository);
  GetIt.I.registerFactory(() => CustomScaffoldUtil());
  GetIt.I.registerFactory(() => configureDio(authSharedRepository));


  runApp(const MainApp());
}
