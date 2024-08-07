import 'package:ev_charger/features/location/presentation/widgets/location_name_address.dart';
import 'package:ev_charger/features/mapview/presentation/widgets/view_route_direction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/domain/providers/auth/auth_provider.dart';
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
    final isAuthenticated = ref.watch(authCheckProvider);

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
              top: 8,
              right: 8,
              child: IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: () async {
                  if (!isAuthenticated) {
                    await showDialog(
                      context: context,
                      builder: (context) => const AuthenticationScreen(),
                    );
                  } else {
                    print("Bookmark action confirmed");
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
