import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../routes/app_route.dart';
import '../../../../shared/domain/providers/permission/permission_provider.dart';
import '../../../notification/screens/permission_screen.dart';

class ViewRouteDirectionButtons extends ConsumerWidget {
  const ViewRouteDirectionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    void handleButtonPress() {
      final permissionState = ref.read(permissionProvider);

      if (!permissionState.hasPermission) {
        showDialog(
          context: context,
          builder: (context) => const PermissionScreen(),
        );
      } else {
        // Permission granted, handle the intended functionality here
        Navigator.of(context).pop(); // Example to pop the current screen
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            child: OutlinedButton(
              onPressed: () => context.router.push(const LocationRoute()),
              style: OutlinedButton.styleFrom(padding: EdgeInsets.all(0),
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                  'View',
                  style: Theme.of(context).primaryTextTheme.bodyMedium
              ),
            ),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
        Expanded(
          child: SizedBox(
            
            child: OutlinedButton(
              
              onPressed: handleButtonPress,
              style: OutlinedButton.styleFrom(padding: EdgeInsets.all(0),
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                  'Route Plan',
                  style: Theme.of(context).primaryTextTheme.bodyMedium
              ),
            ),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
        Expanded(
          child: SizedBox(
            child: ElevatedButton(
              onPressed: handleButtonPress,
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0),
                backgroundColor: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Direction',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
