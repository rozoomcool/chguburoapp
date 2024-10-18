import 'package:auto_route/auto_route.dart';
import 'package:chguburoapp/router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/state/auth/auth_cubit.dart';

class AuthGuard extends AutoRouteGuard {
  final AuthState authState;

  AuthGuard(this.authState);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authState is! UnauthorizedAuthState && authState is! UnknownAuthState) {
      resolver.next();
    } else {
      resolver.redirect(const AuthRoute());
    }
  }
}
