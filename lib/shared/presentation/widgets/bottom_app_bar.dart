import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_route/auto_route.dart';
import '../../../routes/app_route.dart';

enum BottomAppBarButton {
  home,
  route,
  account,
}

class SimpleBottomAppBar extends StatelessWidget {
  final void Function()? onHomePressed;
  final void Function()? onRoutePressed;
  final void Function()? onAccountPressed;

  const SimpleBottomAppBar({
    super.key,
    this.onHomePressed,
    this.onRoutePressed,
    this.onAccountPressed,
  });

  bool _isCurrentRoute(BuildContext context, String routeName) {
    return ModalRoute.of(context)?.settings.name == routeName;
  }

  Widget _buildButton(BuildContext context, BottomAppBarButton button) {
    String assetName;
    String label;
    void Function()? onPressed;
    bool isSelected;

    switch (button) {
      case BottomAppBarButton.home:
        assetName = 'assets/icons/home_icon.svg';
        label = 'Home';
        onPressed = () {
          if (!_isCurrentRoute(context, MapRoute.name)) {
            context.router.push(MapRoute());
          }
        };
        isSelected = _isCurrentRoute(context, MapRoute.name);
        break;
      case BottomAppBarButton.route:
        assetName = 'assets/icons/route_icon.svg';
        label = 'Route';
        onPressed = () {
          if (!_isCurrentRoute(context, LocationRoute.name)) {
            context.router.push(const LocationRoute());
          }
        };
        isSelected = _isCurrentRoute(context, LocationRoute.name);
        break;
      case BottomAppBarButton.account:
        assetName = 'assets/icons/account_icon.svg';
        label = 'Account';
        onPressed = () {
          if (!_isCurrentRoute(context, SearchRoute.name)) {
            context.router.push(SearchRoute());
          }
        };
        isSelected = _isCurrentRoute(context, SearchRoute.name);
        break;
    }

    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: SvgPicture.asset(
              assetName,
              color: isSelected ? Theme.of(context).colorScheme.primary : null,
            ),
          ),
          const SizedBox(height: 1),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: isSelected ? Theme.of(context).colorScheme.primary : null,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildButton(context, BottomAppBarButton.home),
          _buildButton(context, BottomAppBarButton.route),
          _buildButton(context, BottomAppBarButton.account),
        ],
      ),
    );
  }
}
