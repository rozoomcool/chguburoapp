import 'package:auto_route/auto_route.dart';
import 'package:chguburoapp/domain/state/auth/auth_cubit.dart';
import 'package:chguburoapp/domain/state/theme/theme_cubit.dart';
import 'package:chguburoapp/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return AutoTabsScaffold(
          routes: const [
            HomeRoute(),
            ProfileRoute(),
          ],
          appBarBuilder: (context, tabsRouter) {
            return AppBar(
              title: Row(
                children: [
                  SizedBox(
                      width: 56,
                      height: 56,
                      child: Image.asset("assets/chesu.png")),
                  const SizedBox(width: 8,),
                  const Text("DocYu")
                ],
              ),
              centerTitle: false,
              actions: [
                IconButton(
                  onPressed: () {
                    context.read<ThemeCubit>().toggleTheme();
                  },
                  icon: Icon(state is LightModeThemeState ? Iconsax.sun_1 : Iconsax.moon5),
                ),
                IconButton(
                  onPressed: () {
                    context.read<AuthCubit>().logOut();
                  },
                  icon: const Icon(Iconsax.logout),
                ),
              ],
            );
          },
          transitionBuilder: (context, child, animation) =>
              TransitionsBuilders.slideLeftWithFade(
                  context, animation, animation, child),
          // floatingActionButton: FloatingActionButton.extended(
          //   onPressed: () {
          //     context.pushRoute(const MapsRoute());
          //   },
          //   label: const FaIcon(FontAwesomeIcons.locationDot),
          // ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBuilder: (context, tabsRouter) {
            return BottomNavigationBar(
              elevation: 4,
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              selectedItemColor: Colors.black87,
              unselectedItemColor: Colors.black54,
              items: [
                const BottomNavigationBarItem(
                    label: 'Главная', icon: Icon(Iconsax.home)),
                const BottomNavigationBarItem(
                    label: 'Профиль', icon: Icon(Iconsax.user)),
              ],
            );
          },
        );
      },
    );
  }
}
