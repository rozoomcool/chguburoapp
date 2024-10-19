import 'package:auto_route/auto_route.dart';
import 'package:chguburoapp/domain/model/auth_request/auth_request.dart';
import 'package:chguburoapp/domain/state/auth/auth_cubit.dart';
import 'package:chguburoapp/utils/app_colors.dart';
import 'package:chguburoapp/utils/custom_scaffold_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _scaffoldKey = GetIt.I<CustomScaffoldUtil>().key;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomSheet: BottomSheet(
          onClosing: () => {},
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Вход в систему",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                        label: const Text("Логин"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        label: const Text("Пароль"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () {
                          context.read<AuthCubit>().signIn(AuthRequest(
                              username: _usernameController.value.text,
                              password: _passwordController.value.text));
                        },
                        child: Text("Войти",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: Colors.white, fontSize: 18)),
                      )),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            );
          }),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.primaryColor,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 68,
                          height: 68,
                          child: SvgPicture.asset("assets/logo.svg")),
                      const SizedBox(
                        width: 16,
                      ),
                      Text("DocYu",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 66,
                                  color: Colors.white))
                    ],
                  ),
                  Text(
                    "Единая система\nдокументооборота\nЧГУ им. А.А. Кадырова",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
