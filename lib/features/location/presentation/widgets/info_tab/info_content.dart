import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ev_charger/shared/domain/providers/location/location_provider.dart';

import '../../../../../shared/core/localization/localization.dart';

class InfoContent extends ConsumerStatefulWidget {
  const InfoContent({super.key});

  @override
  _InfoContentState createState() => _InfoContentState();
}

class _InfoContentState extends ConsumerState<InfoContent> {
  bool isExpanded = false;
  bool isOverflowing = false;
  final GlobalKey _textKey = GlobalKey();

  void _checkTextOverflow() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox renderBox =
          _textKey.currentContext?.findRenderObject() as RenderBox;
      final size = renderBox.size;
      final double maxHeight =
          4 * Theme.of(context).textTheme.bodyMedium!.fontSize! * 1.2;

      if (size.height > maxHeight) {
        setState(() {
          isOverflowing = true;
        });
      }
    });
  }

  Widget _buildAboutSection(String? longText) {
    if (longText == null || longText.isEmpty) {
      return SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20),
        Text(
          'About',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(height: 2),
        Text(
          longText,
          key: _textKey,
          style: Theme.of(context).textTheme.bodyMedium,
          maxLines: isExpanded ? null : 4,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        if (isOverflowing || isExpanded)
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? AppLocalizations.of(context).translate('Read less') : AppLocalizations.of(context).translate('Read more'),
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
          ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget _buildDataList(List<Map<String, String>> data) {
    return Column(
      children: List.generate(
        data.length,
        (index) => Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            color: Theme.of(context).stationGrey,
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data[index].keys.first,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  data[index].values.first,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentLocation = ref.watch(locationProvider);

    return Container(
      child: currentLocation.when(
        data: (location) {
          final String? longText = location.description;
          final List<Map<String, String>> data = [];
          if (location.pricing != null && location.pricing!.isNotEmpty) {
            data.add({AppLocalizations.of(context).translate('Fee'): location.pricing!});
          }
          if (location.phoneNumber != null &&
              location.phoneNumber!.isNotEmpty) {
            data.add({AppLocalizations.of(context).translate('Phone'): location.phoneNumber!});
          }
          if (location.parkingLevel != null &&
              location.parkingLevel!.isNotEmpty) {
            data.add({AppLocalizations.of(context).translate('Parking Level'): location.parkingLevel!});
          }
          data.add({AppLocalizations.of(context).translate('Monday'): location.workingDay.mon});
          data.add({AppLocalizations.of(context).translate('Tuesday'): location.workingDay.tue});
          data.add({AppLocalizations.of(context).translate('Wednesday'): location.workingDay.wed});
          data.add({AppLocalizations.of(context).translate('Thursday'): location.workingDay.thu});
          data.add({AppLocalizations.of(context).translate('Friday'): location.workingDay.fri});
          data.add({AppLocalizations.of(context).translate('Saturday'): location.workingDay.sat});
          data.add({AppLocalizations.of(context).translate('Sunday'): location.workingDay.sun});

          WidgetsBinding.instance
              .addPostFrameCallback((_) => _checkTextOverflow());

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildAboutSection(longText),
              _buildDataList(data),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  color: Theme.of(context).dividerColor,
                  thickness: 1,
                ),
              ),
              Text(
              AppLocalizations.of(context).translate('Nearby'),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 200,
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
