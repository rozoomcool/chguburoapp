import 'package:auto_route/auto_route.dart';

import '../presentation/screens/auth/auth_screen.dart';
import '../presentation/screens/home/home_screen.dart';
import '../presentation/screens/profile/profile_screen.dart';
import '../presentation/screens/root/root_screen.dart';
import 'auth_route_guard.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: RootRoute.page,
          guards: [AuthGuard()],
          children: [
            RedirectRoute(path: '', redirectTo: 'home'),
            AutoRoute(path: 'home', page: HomeRoute.page),
            AutoRoute(path: 'profile', page: ProfileRoute.page)
          ],
        ),
        AutoRoute(path: '/auth', page: AuthRoute.page)
      ];
}
