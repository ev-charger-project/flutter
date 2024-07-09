import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/back_button.dart';
import '../widgets/location_banner.dart';

@RoutePage()
class LocationPage extends ConsumerStatefulWidget {
  final String id;

  const LocationPage({super.key, this.id = '5'});

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends ConsumerState<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: backButton(),
        leadingWidth: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            locationBanner(),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Location ID: ${widget.id}',
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Add more widgets here to test scrolling
          ],
        ),
      ),
    );
  }
}


