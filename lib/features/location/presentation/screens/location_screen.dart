import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/location/presentation/widgets/info_chargers_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import '../widgets/widgets.dart';
import 'package:ev_charger/features/location/presentation/providers/page_state_provider.dart';

@RoutePage()
class LocationScreen extends ConsumerStatefulWidget {
  const LocationScreen({super.key});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends ConsumerState<LocationScreen> {
  @override
  void initState() {
    super.initState();
  }

  void _setSystemUIOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0x9B606060),
      statusBarIconBrightness: Brightness.light,
    ));
  }

  @override
  Widget build(BuildContext context) {
    _setSystemUIOverlayStyle();
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
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.065),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0,
                        left: MediaQuery.of(context).size.width * 0.015,
                        right: MediaQuery.of(context).size.width * 0.015),
                    child: const LocationNameAddress(),
                  ),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    thickness: 1,
                  ),
                  const ChargerNum(),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.015,
                        vertical: 10.0),
                    child: const RouteDirectionButtons(),
                  ),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    thickness: 1,
                  ),
                  const InfoChargersButtons(),
                  Consumer(
                    builder: (context, ref, _) {
                      final pageState = ref.watch(pageStateProvider);
                      return pageState == PageState.info
                          ? const InfoContent()
                          : const Flexible(
                          fit: FlexFit.loose, child: ChargersContent());
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
