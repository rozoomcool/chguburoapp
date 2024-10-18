import 'package:auto_route/auto_route.dart';
import 'package:chguburoapp/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../domain/state/auth/auth_cubit.dart';


@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (context) => UserCubit()..init()),
      ],
      child: AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          ProfileRoute(),
        ],
        appBarBuilder: (context, tabsRouter) {
          return AppBar(
            title: const Text("ITAbrek"),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: () {
                  context.read<AuthCubit>().logOut();
                },
                icon: const Icon(Iconsax.logout),
              ),
              // ...?actions[tabsRouter.current.name]?.map((e) => e)
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
      ),
    );
  }
}
