import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../location/presentation/widgets/back_button.dart';
import '../providers/end_provider.dart';
import '../providers/start_provider.dart';

class LocationAppBar extends ConsumerWidget {
  const LocationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameStart = ref.watch(startProvider).id;
    final nameEnd = ref.watch(endProvider).id;
    final screenSize = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width * 0.02,
              right: screenSize.width * 0.1,
              bottom: screenSize.height * 0.01),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const backButton(),
              SizedBox(
                width: screenSize.width * 0.02,
              ),
              Expanded(
                child: Column(
                  children: [
                    LocationBox(context: context, hintText: nameStart),
                    const SizedBox(height: 10),
                    LocationBox(context: context, hintText: nameEnd),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LocationBox extends StatelessWidget {
  const LocationBox({
    super.key,
    required this.context,
    required this.hintText,
  });

  final BuildContext context;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              width: 1, color: Theme.of(context).colorScheme.secondary)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              hintText,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Theme.of(context).colorScheme.secondary),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
