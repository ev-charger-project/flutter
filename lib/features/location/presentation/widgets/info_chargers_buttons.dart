import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/core/localization/localization.dart';
import '../providers/page_state_provider.dart';

class InfoChargersButtons extends ConsumerWidget {
  const InfoChargersButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = ref.watch(pageStateProvider);
    const double width = 3;

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
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                    width: width,
                  ),
                ),
              ),
              child: Center(
                child:
                    Text('Info', style: Theme.of(context).textTheme.bodyMedium),
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
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                    width: width,
                  ),
                ),
              ),
              child: Center(
                child: Text(AppLocalizations.of(context).translate('Chargers'),
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
