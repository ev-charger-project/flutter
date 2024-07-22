import 'dart:async';
import 'package:ev_charger/features/splash/widgets/dots_circular_progress_painter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../routes/app_route.dart';

@RoutePage()
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      context.router.replace(MapRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: screenSize.height * 0.2),
                SizedBox(
                  child: SvgPicture.asset('assets/images/splash.svg'),
                  height: screenSize.height * 0.23,
                ),
                // Update with your actual splash image

                SizedBox(
                  child: DotsCircularProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                    numberOfDots: 8,
                  ),
                  height: 60,
                ),
                SizedBox(height: screenSize.height * 0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
