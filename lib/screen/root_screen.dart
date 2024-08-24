import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../router/app_router.dart';

@RoutePage()
class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int selectedRoute = 0;

  void changeRoute(int value) {
    setState(() {
      selectedRoute = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [HomeRoute(), OrderRoute(), ProfileRoute()],
      // body: const AutoRouter(),
      lazyLoad: true,
      transitionBuilder: (context, child, animation) =>
          TransitionsBuilders.slideLeft(context, animation, animation, child),
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.home_1,
                  size: 32,
                ),
                label: "Главная"),
            BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.routing,
                  size: 32,
                ),
                label: "Заказы"),
            BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.user,
                  size: 32,
                ),
                label: "Профиль"),
          ]),
    );
  }
}


// return BottomNavigationBar(
// elevation: 4,
// currentIndex: tabsRouter.activeIndex,
// onTap: tabsRouter.setActiveIndex,
// selectedItemColor: Colors.black87,
// unselectedItemColor: Colors.black54,
// items: const [
// BottomNavigationBarItem(
// label: 'Главная', icon: Icon(Iconsax.home)),
// BottomNavigationBarItem(
// label: 'Репетиторы',
// icon: Icon(Iconsax.message)),
// // BottomNavigationBarItem(
// //     label: 'Задачи', icon: Icon(Iconsax.task_square)),
// // BottomNavigationBarItem(
// //     label: 'Профиль', icon: Icon(Iconsax.user)),
// ],
// );