import 'package:auto_route/auto_route.dart';
import 'package:chguburoapp/router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/state/auth/auth_cubit.dart';

class AuthGuard extends AutoRouteGuard {

  AuthGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // final context = router.navigatorKey.currentContext;
    // if (context != null) {
    //   final authState = BlocProvider.of<AuthCubit>(context).state;
    //
    //   var prefs = GetIt.I<SharedPreferences>();
    //   // String authState = prefs.getString("auth") ?? "";
    var authState = router.navigatorKey.currentContext?.read<AuthCubit>().state;
    if (authState is! UnauthorizedAuthState && authState is! UnknownAuthState) {
      resolver.next();
    } else {
      resolver.redirect(const AuthRoute());
    }
  }
}
