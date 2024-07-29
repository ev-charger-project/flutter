import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/search/presentation/screens/search_screen.dart';
import 'package:flutter/cupertino.dart';
import '../features/location/presentation/screens/location_screen.dart';
import '../features/mapview/presentation/screens/map_screen.dart';
import '../features/search/presentation/screens/filter_screen.dart';
import '../features/splash/screens/splash_screen.dart';

part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: LocationRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: 400,
            initial: false),
        CustomRoute(
            page: MapRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: 400,
            initial: false),
        CustomRoute(page: SplashRoute.page, initial: true),
        CustomRoute(
          page: FilterRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 400,
          initial: false,
        ),
        CustomRoute(
          page: SearchRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 800,
          initial: false,
        )
      ];
}
