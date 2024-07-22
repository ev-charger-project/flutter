import 'package:ev_charger/shared/presentation/theme/app_colors.dart';
import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StationCount extends ConsumerStatefulWidget {
  const StationCount({super.key});

  @override
  ConsumerState createState() => _StationCountState();
}

class _StationCountState extends ConsumerState<StationCount> {
  // List of Colors
  List<Color> containerColors = List<Color>.filled(4, Color(0xFFBCDEC5));

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.012),
      child: Container(
        padding: EdgeInsets.all(screenSize.height * 0.016),
        decoration: BoxDecoration(
            color: AppColors.lightGrey, borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  textAlign: TextAlign.left,
                  "Station Count",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
            const Divider(
              color: AppColors.dividerColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      //Toggle the color of the pressed container

                      // this code is for when users have to choose 1 and only 1 container, no detoggle
                      containerColors =
                          List<Color>.filled(4, Theme.of(context).lightGreen);
                      containerColors[index] = Color(0xFF34A853);

                      /*// this code is for when users want to detoggle the selected container
                                containerColors[index] =
                                    containerColors[index] == Color(0xFFBCDEC5)
                                        ? Color(0xFF34A853)
                                        : Color(0xFFBCDEC5);*/
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: containerColors[index],
                      // Use color from the list
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Color(0xFF323842),
                      ),
                    ),
                    width: 80,
                    height: 40,
                    child: Center(
                      child: Text(
                        ["Any", "2+", "4+", "6+"][index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
