import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ev_charger/shared/domain/providers/location/location_provider.dart';

class InfoContent extends ConsumerStatefulWidget {
  const InfoContent({super.key});

  @override
  _InfoContentState createState() => _InfoContentState();
}

class _InfoContentState extends ConsumerState<InfoContent> {
  bool isExpanded = false;

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
          style: Theme.of(context).textTheme.bodyMedium,
          maxLines: isExpanded ? null : 4,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? 'Read less' : 'Read more',
            style: Theme.of(context).primaryTextTheme.bodyMedium
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
            color: const Color(0x99e8e8e8),
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
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
          final List<Map<String, String>> data = [
            {'Open Hours': '06:00 - 23:00'},
            {'Fee': location.pricing ?? '??'},
            {'Phone': location.phoneNumber ?? '??'},
            {'Parking Level': location.parkingLevel ?? '??'},
          ];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildAboutSection(longText),
              _buildDataList(data),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Text(
                'Nearby',
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
