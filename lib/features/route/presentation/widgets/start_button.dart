import 'package:ev_charger/features/route/presentation/providers/end_provider.dart';
import 'package:ev_charger/features/route/presentation/providers/start_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class StartButton extends ConsumerWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void handleButtonPress() async {
      final userLocation = ref.read(startProvider);
      final destination = ref.read(endProvider);

      final url = Uri.parse(
          'https://www.google.com/maps/dir/?api=1&origin=${userLocation.latitude},${userLocation.longitude}&destination=${destination.latitude},${destination.longitude}&travelmode=driving');

      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: ElevatedButton(
            onPressed: () {
              handleButtonPress();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            child: Text(
              'Start',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context).colorScheme.secondary, fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}
