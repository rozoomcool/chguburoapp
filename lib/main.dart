import 'package:chguburoapp/app/app.dart';
import 'package:chguburoapp/utils/custom_scaffold_util.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerFactory(() => SharedPreferences.getInstance());
  GetIt.I.registerSingleton(() => CustomScaffoldUtil());


  runApp(MainApp());
}
