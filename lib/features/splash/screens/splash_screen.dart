import 'dart:async';
import 'package:ev_charger/features/splash/widgets/dots_circular_progress_painter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../routes/app_route.dart';
import '../../../shared/domain/providers/permission/permission_provider.dart';
import '../../notification/screens/permission_screen.dart';

@RoutePage()
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      context.router.push(MapRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: screenSize.height * 0.2),
                  SizedBox(
                    height: screenSize.height * 0.23,
                    child: SvgPicture.asset('assets/images/splash.svg'),
                  ),
                  // Update with your actual splash image

                  SizedBox(
                    height: 60,
                    child: DotsCircularProgressIndicator(
                      color: Theme.of(context).colorScheme.primary,
                      numberOfDots: 8,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
