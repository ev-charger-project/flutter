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
  bool openSetting = false;

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

  late AppLifecycleState _notification;


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _notification = state;
      print(_notification);
    });
    if (_notification == AppLifecycleState.resumed && openSetting == true) {
      print("after open app setting");
      ref.read(permissionProvider.notifier).checkAndRequestPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    final ref = this.ref;
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
              buttonType: permissionState.deniedForever ? ButtonType.openSettings : ButtonType.enableLocation,
              onTap: () async {
                if (permissionState.deniedForever) {
                  openSetting = true;
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
