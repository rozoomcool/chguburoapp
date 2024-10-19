import 'package:auto_route/auto_route.dart';

import '../domain/state/auth/auth_cubit.dart';
import '../presentation/screens/auth/auth_screen.dart';
import '../presentation/screens/home/home_screen.dart';
import '../presentation/screens/profile/profile_screen.dart';
import '../presentation/screens/root/root_screen.dart';
import '../presentation/screens/service/service_screen.dart';
import 'auth_route_guard.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

  final AuthState authState;

  AppRouter(this.authState);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: RootRoute.page,
          guards: [AuthGuard(authState)],
          children: [
            RedirectRoute(path: '', redirectTo: 'home'),
            AutoRoute(path: 'home', page: HomeRoute.page),
            AutoRoute(path: 'profile', page: ProfileRoute.page),
            AutoRoute(path: 'service', page: ServiceRoute.page),
          ],
        ),
        AutoRoute(path: '/auth', page: AuthRoute.page)
      ];
}
