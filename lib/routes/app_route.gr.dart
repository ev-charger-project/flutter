// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    LocationRoute.name: (routeData) {
      final args = routeData.argsAs<LocationRouteArgs>(
          orElse: () => const LocationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LocationScreen(
          key: args.key,
          id: args.id,
        ),
      );
    }
  };
}

/// generated route for
/// [LocationScreen]
class LocationRoute extends PageRouteInfo<LocationRouteArgs> {
  LocationRoute({
    Key? key,
    String id = '5',
    List<PageRouteInfo>? children,
  }) : super(
          LocationRoute.name,
          args: LocationRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const PageInfo<LocationRouteArgs> page =
      PageInfo<LocationRouteArgs>(name);
}

class LocationRouteArgs {
  const LocationRouteArgs({
    this.key,
    this.id = '5',
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'LocationRouteArgs{key: $key, id: $id}';
  }
}
