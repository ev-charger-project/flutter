import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/domain/providers/permission/permission_provider.dart';
import '../widgets/permission_button.dart';
import '../widgets/permission_content.dart';

class PermissionScreen extends ConsumerWidget {
  const PermissionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final permissionState = ref.watch(permissionProvider);
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return AlertDialog(
      content: SizedBox(
        height: height * 0.4,
        width: width * 0.6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const PermissionContent(),
            const Spacer(),
            PermissionButton(
              // buttonType: permissionState.deniedForever ? ButtonType.openSettings : ButtonType.enableLocation,
              buttonType: ButtonType.enableLocation,

              onTap: () async {
                await ref
                    .read(permissionProvider.notifier)
                    .checkAndRequestPermission();
                Navigator.of(context).pop();
                // if (permissionState.deniedForever) {
                //   await ref.read(permissionProvider.notifier).openSettings();
                //   Navigator.of(context).pop();
                // } else {
                //   await ref.read(permissionProvider.notifier).checkAndRequestPermission();
                //   Navigator.of(context).pop();
                // }
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            PermissionButton(
              buttonType: ButtonType.cancel,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
