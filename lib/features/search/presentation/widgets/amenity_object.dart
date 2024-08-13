import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/core/localization/localization.dart';

class AmenityObject extends ConsumerStatefulWidget {
  final String amenityName;
  final String amenityIconPath;
  bool isChecked;

  AmenityObject({
    super.key,
    required this.amenityName,
    required this.amenityIconPath,
    required this.isChecked,
  });

  AmenityObject copyWith(
      {String? amenityName, String? amenityIcon, bool? isChecked}) {
    return AmenityObject(
      amenityName: amenityName ?? this.amenityName,
      amenityIconPath: amenityIcon ?? this.amenityIconPath,
      isChecked: isChecked ?? this.isChecked,
    );
  }

  void toggleChecked() {
    isChecked = !isChecked;
  }

  @override
  _AmenityObjectState createState() => _AmenityObjectState();
}

class _AmenityObjectState extends ConsumerState<AmenityObject> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.toggleChecked();
        });
      },
      child: Container(
        color: widget.isChecked
            ? Theme.of(context).colorScheme.secondary
            : Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.amenityIconPath,
              color: widget.isChecked ? Theme.of(context).primaryColor : null,
              width: 24,
              height: 24,
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
