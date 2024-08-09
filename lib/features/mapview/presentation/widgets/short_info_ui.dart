import 'package:ev_charger/features/location/presentation/providers/selected_location_id_provider.dart';
import 'package:ev_charger/features/location/presentation/widgets/location_name_address.dart';
import 'package:ev_charger/features/mapview/presentation/widgets/view_route_direction.dart';
import 'package:ev_charger/repositories/user/data_sources/user_info_data_source.dart';
import 'package:ev_charger/repositories/user/data_sources/user_remote_data_source.dart';
import 'package:ev_charger/repositories/user/user_info_repo_impl.dart';
import 'package:ev_charger/shared/data/data_source/remote/remote_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/user/user_info_repository_provider.dart';
import '../../../../shared/domain/providers/auth/auth_provider.dart';
import '../../../../shared/domain/providers/location/location_provider.dart';
import '../../../../shared/domain/providers/secure_storage_service_provider.dart';
import '../../../../shared/domain/providers/user/user_provider.dart';
import '../../../location/presentation/widgets/amount_chargers.dart';
import '../../../notification/authentication/screens/authentication_screen.dart';

class ShortInfoUI extends ConsumerWidget {
  final void Function(double) onDragUpdate;
  final void Function() onDragEnd;

  const ShortInfoUI({
    super.key,
    required this.onDragUpdate,
    required this.onDragEnd,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthenticated = ref.watch(authProvider).value;

    return GestureDetector(
      onVerticalDragUpdate: (details) {
        onDragUpdate(details.primaryDelta!);
      },
      onVerticalDragEnd: (details) {
        onDragEnd();
      },
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.035),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.035),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.015),
                        child: const LocationNameAddress(),
                      ),
                      Divider(
                        color: Theme.of(context).dividerColor,
                        thickness: 1,
                      ),
                      const ChargerNum(),
                      Divider(
                        color: Theme.of(context).dividerColor,
                        thickness: 1,
                      ),
                      const ViewRouteDirectionButtons(),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 12,
              right: 18,
              child: IconButton(
                iconSize: 30,
                icon: Icon(Icons.bookmark_border,color: Theme.of(context).primaryColor,),
                onPressed: () async {
                  if (!isAuthenticated!) {
                    await showDialog(
                      context: context,
                      builder: (context) => const AuthenticationScreen(),
                    );
                  } else {
                    final userInfoRepository = ref.watch(userInfoRepositoryProvider);
                    final userInfo = ref.watch(userProvider).value;
                    final secureStorage = ref.watch(secureStorageServiceProvider);
                    var tokenData = await secureStorage.getToken();
                    print(userInfo?.userId);

                    final selectedLocationId = ref.watch(selectedLocationIdProvider);
                    await userInfoRepository.createFav(selectedLocationId, tokenData!.access_token);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
