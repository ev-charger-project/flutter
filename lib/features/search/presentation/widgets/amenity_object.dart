import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/core/localization/localization.dart';
import '../providers/amenity/available_amenities_provider.dart';
import '../providers/amenity/selected_amenities_provider.dart';

class AmenityObject extends ConsumerStatefulWidget {
  final String amenityName;
  final String amenityIconPath;
  bool isChecked;
  final StateNotifierProvider<SelectedAmenitiesNotifier, int>
      selectedAmenitiesProvider;

  AmenityObject({
    super.key,
    required this.amenityName,
    required this.amenityIconPath,
    required this.isChecked,
    required this.selectedAmenitiesProvider,
  });

  AmenityObject copyWith(
      {String? amenityName, String? amenityIconPath, bool? isChecked}) {
    return AmenityObject(
      amenityName: amenityName ?? this.amenityName,
      amenityIconPath: amenityIconPath ?? this.amenityIconPath,
      isChecked: isChecked ?? this.isChecked,
      selectedAmenitiesProvider: selectedAmenitiesProvider,
    );
  }

  @override
  _AmenityObjectState createState() => _AmenityObjectState();
}

class _AmenityObjectState extends ConsumerState<AmenityObject> {
  void toggleChecked() {
    setState(() {
      widget.isChecked = !widget.isChecked;
    });
    if (kDebugMode) {
      print(widget.isChecked);
    }
    // Notify the provider about the change
    ref.read(availableAmenitiesProvider.notifier).update((state) {
      final index = state
          .indexWhere((amenity) => amenity.amenityName == widget.amenityName);
      if (index != -1) {
        state[index] = state[index].copyWith(isChecked: widget.isChecked);
      }
      return state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleChecked,
      child: Container(
        color: widget.isChecked
            ? Theme.of(context).colorScheme.secondary
            : Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.network(
              widget.amenityIconPath,
              color: widget.isChecked ? Theme.of(context).primaryColor : null,
              width: 48,
              height: 48,
            ),
            const SizedBox(height: 5),
            Text(
              (AppLocalizations.of(context).translate(widget.amenityName)),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color:
                      widget.isChecked ? Theme.of(context).primaryColor : null),
            ),
          ],
        ),
      ),
    );
  }
}
