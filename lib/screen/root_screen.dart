import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../router/app_router.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ProfileRoute(),
        // DashRoute(),
        // SettingsRoute(),
      ],
      // appBarBuilder: (context, tabsRouter) {
      //   return AppBar(
      //     title: const Text("Rosul Taxist"),
      //     centerTitle: true,
      //     backgroundColor: Colors.transparent,
      //     leading: IconButton(
      //       onPressed: () {},
      //       icon: Icon(Iconsax.menu_copy),
      //     ),
      //     actions: [
      //       IconButton(
      //         onPressed: () {
      //           // context.read<AuthCubit>().logOut();
      //         },
      //         icon: const Icon(Iconsax.logout),
      //       ),
      //       // ...?actions[tabsRouter.current.name]?.map((e) => e)
      //     ],
      //   );
      // },
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
        return NavigationBar(
          elevation: 4,
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          indicatorColor: Colors.transparent,
          surfaceTintColor: Colors.black26,
          indicatorShape: InputBorder.none,
          backgroundColor: const Color(0xFF2C2B2B),
          destinations: const [
            NavigationDestination(
                label: 'Главная', icon: Icon(Iconsax.home)),
            NavigationDestination(
                label: 'Профиль',
                icon: Icon(Iconsax.user)),
            // BottomNavigationBarItem(
            //     label: 'Задачи', icon: Icon(Iconsax.task_square)),
            // BottomNavigationBarItem(
            //     label: 'Профиль', icon: Icon(Iconsax.user)),
          ],
        );
      },
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