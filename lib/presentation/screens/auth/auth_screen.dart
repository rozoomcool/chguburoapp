import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(decoration: InputDecoration(
          label: Text("usename")
        ),),
        TextField(decoration: InputDecoration(
          label: Text("password")
        ),),
        ElevatedButton(onPressed: () {}, child: Text("Войти"))
      ],
    );
  }
}