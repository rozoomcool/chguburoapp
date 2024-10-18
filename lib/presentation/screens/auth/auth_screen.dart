import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(decoration: InputDecoration(
                  label: Text("usename")
              ),),
              TextField(decoration: InputDecoration(
                  label: Text("password")
              ),),
              ElevatedButton(onPressed: () {}, child: Text("Войти"))
            ],
          ),
        ),
      ),
    );
  }
}