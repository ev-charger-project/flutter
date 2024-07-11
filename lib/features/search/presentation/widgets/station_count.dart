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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Color(0xFFE9E9E9), borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  textAlign: TextAlign.left,
                  "Station Count",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFCBCBCB),
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
                          List<Color>.filled(4, Color(0xFFBCDEC5));
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
