import 'package:auto_route/auto_route.dart';
import 'package:chguburoapp/domain/state/application/application_cubit.dart';
import 'package:chguburoapp/domain/state/auth/auth_cubit.dart';
import 'package:chguburoapp/domain/state/theme/theme_cubit.dart';
import 'package:chguburoapp/domain/state/user/user_cubit.dart';
import 'package:chguburoapp/router/app_router.dart';
import 'package:chguburoapp/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserCubit()..init()),
        BlocProvider(create: (context) => ApplicationCubit()..init()),
        ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return AutoTabsScaffold(
            backgroundColor: AppColors.backgroundColor,
            routes: const [
              HomeRoute(),
              ServiceRoute(),
              ProfileRoute(),
            ],
            appBarBuilder: (context, tabsRouter) {
              return AppBar(
                backgroundColor: AppColors.backgroundColor,
                title: Row(
                  children: [
                    SizedBox(
                        width: 28,
                        height: 28,
                        child: SvgPicture.asset("assets/logo_s.svg")),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "DocYu",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: AppColors.primaryColor),
                    )
                  ],
                ),
                centerTitle: false,
                actions: [
                  IconButton(
                    onPressed: () {
                      context.read<ThemeCubit>().toggleTheme();
                    },
                    icon: Icon(state is LightModeThemeState
                        ? Iconsax.sun_1
                        : Iconsax.moon5),
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
                backgroundColor: AppColors.backgroundColor,
                elevation: 4,
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                selectedItemColor: Colors.black87,
                unselectedItemColor: Colors.black54,
                items: const [
                  BottomNavigationBarItem(
                      label: 'Главная', icon: Icon(Iconsax.home)),
                  BottomNavigationBarItem(
                      label: 'Услуги', icon: Icon(Iconsax.menu_board)),
                  BottomNavigationBarItem(
                      label: 'Профиль', icon: Icon(Iconsax.user)),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
