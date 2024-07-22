import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/domain/providers/permission/permission_provider.dart';
import '../widgets/permission_button.dart';
import '../widgets/permission_content.dart';

class PermissionScreen extends ConsumerStatefulWidget {
  const PermissionScreen({super.key});

  @override
  ConsumerState<PermissionScreen> createState() => _PermissionScreenState();
}

class _PermissionScreenState extends ConsumerState<PermissionScreen> with WidgetsBindingObserver {
  bool _wasInBackground = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive || state == AppLifecycleState.paused) {
      _wasInBackground = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ref = this.ref;
    final permissionState = ref.watch(permissionProvider);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_wasInBackground) {
        _wasInBackground = false;
        ref.read(permissionProvider.notifier).checkAndRequestPermission();
        print('after open app setting');
      }
    });

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
              buttonType: permissionState.deniedForever ? ButtonType.openSettings : ButtonType.enableLocation,
              onTap: () async {
                if (permissionState.deniedForever) {
                  await ref.read(permissionProvider.notifier).openSettings();
                  Navigator.of(context).pop();
                } else {
                  await ref.read(permissionProvider.notifier).checkAndRequestPermission();
                  Navigator.of(context).pop();
                }
              },
            ),
            SizedBox(height: height * 0.02,),
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
