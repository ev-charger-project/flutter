import 'package:auto_route/auto_route.dart';
import '../features/location/presentation/screens/location_screen.dart';
import '../features/mapview/presentation/screens/map_screen.dart';

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
            initial: true),
      ];
}
