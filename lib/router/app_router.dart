import 'package:auto_route/auto_route.dart';
import 'package:taxiapp/screen/home_screen.dart';
import 'package:taxiapp/screen/order_screen.dart';
import 'package:taxiapp/screen/profile_screen.dart';
import 'package:taxiapp/screen/root_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: RootRoute.page,
      // guards: [AuthGuard(authState: authState)],
      children: [
        RedirectRoute(path: '', redirectTo: 'home'),
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'profile', page: ProfileRoute.page),
        AutoRoute(path: 'order', page: OrderRoute.page)
        // AutoRoute(path: 'dash', page: DashRoute.page),
        // AutoRoute(path: 'settings', page: SettingsRoute.page),
      ],
    ),
    // AutoRoute(page: HomeRoute.page, path: "/")
  ];

}