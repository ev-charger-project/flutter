import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/location/presentation/widgets/info_chargers_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/widgets.dart';
import 'package:ev_charger/features/location/presentation/providers/page_state_provider.dart';

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
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        leading: const backButton(),
        leadingWidth: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LocationBanner(),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                children: [
                  const LocationNameAddress(),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const ChargerNum(),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const RouteDirectionButtons(),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const InfoChargersButtons(),
                  Consumer(
                    builder: (context, ref, _) {
                      final pageState = ref.watch(pageStateProvider);
                      return pageState == PageState.info
                          ? const InfoContent()
                          : const ChargersContent();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
