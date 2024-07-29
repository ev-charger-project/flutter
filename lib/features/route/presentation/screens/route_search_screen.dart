import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/core/localization/localization.dart';
import '../widgets/search_button.dart';

@RoutePage()
class RouteSearchScreen extends ConsumerWidget {
  const RouteSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.router.pop(),
        ),
        title: Text(
        AppLocalizations.of(context).translate('Route Search'),
          style: Theme.of(context).textTheme.displayLarge,
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From',
              style: Theme.of(context).textTheme.headlineMedium
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {

              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Theme.of(context).colorScheme.primary, width: 2)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    AppLocalizations.of(context).translate('Your Location'),
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/location_icon.svg',
                      width: 24,
                      height: 24,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'To',
              style: Theme.of(context).textTheme.headlineMedium
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Theme.of(context).colorScheme.primary, width: 2)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    AppLocalizations.of(context).translate('Choose Destination'),
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.grey ,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/location_icon.svg',
                      width: 24,
                      height: 24,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const SearchRouteButton(),
          ],
        ),
      ),
    );
  }
}

