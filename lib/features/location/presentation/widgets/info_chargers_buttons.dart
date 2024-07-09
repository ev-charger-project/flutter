import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/page_state_provider.dart';

class InfoChargersButtons extends ConsumerWidget {
  const InfoChargersButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = ref.watch(pageStateProvider);
    const double size = 18;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              ref.read(pageStateProvider.notifier).setInfo();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: pageState == PageState.info
                        ? Colors.green
                        : Colors.transparent,
                    width: 2,
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  'Info',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              ref.read(pageStateProvider.notifier).setCharger();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: pageState == PageState.charger
                        ? Colors.green
                        : Colors.transparent,
                    width: 2,
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  'Chargers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
