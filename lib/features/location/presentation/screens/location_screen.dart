import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/amount_chargers.dart';
import '../widgets/back_button.dart';
import '../widgets/location_banner.dart';
import '../widgets/location_name_address.dart';
import '../widgets/route_direction_buttons.dart';

@RoutePage()
class LocationScreen extends ConsumerStatefulWidget {
  const LocationScreen({super.key});

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends ConsumerState<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const backButton(),
        leadingWidth: 100,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            LocationBanner(),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                children: [
                  LocationNameAddress(),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  ChargerNum(),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  RouteDirectionButtons(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


