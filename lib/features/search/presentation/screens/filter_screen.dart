import 'package:auto_route/auto_route.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/presentation/widgets/button.dart';

@RoutePage()
class FilterScreen extends ConsumerStatefulWidget {
  const FilterScreen({super.key});

  @override
  ConsumerState createState() => _FilterScreenState();
}

class _FilterScreenState extends ConsumerState<FilterScreen> {
  // List of Colors
  List<Color> containerColors = List<Color>.filled(4, Color(0xFFBCDEC5));

  // List of Booleans for each checkbox's state
  List<bool> isCheckedList = List<bool>.filled(12, false);

  // Define a Boolean State of the Plugs
  bool showIncompatiblePlugs = false;

  // Define Sf Range Slider values
  SfRangeValues _currentRangeValues = const SfRangeValues(0, 120);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 60,
            bottom: 60,
          ),
          child: Column(
            children: [
              Container(
                //decoration: BoxDecoration(color: Colors.grey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.cancel_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Filter',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Color(0xFFE9E9E9),
                      borderRadius: BorderRadius.circular(8)),
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFE9E9E9),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Charge Type",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFCBCBCB),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          children: List.generate(6, (index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/charger_icon.svg'),
                                    SizedBox(width: 8),
                                    Text(
                                        "CCS${(index + 1) % 2 == 0 ? ((index + 1) ~/ 2) : ((index + 1) ~/ 2 + 1)} • ${index % 2 == 0 ? 'AC' : 'DC'}"),
                                  ],
                                ),
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  side: BorderSide(
                                    width: 2,
                                    style: BorderStyle.solid,
                                    color: Color(0xFF34A853),
                                  ),
                                  activeColor: Color(0xFF34A853),
                                  checkColor: Colors.white,
                                  value: isCheckedList[index],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isCheckedList[index] = value!;
                                    });
                                  },
                                ),
                              ],
                            );
                          }),
                          /*children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/charger_icon.svg'),
                                    SizedBox(width: 8),
                                    Text("CCS1 • AC"),
                                  ],
                                ),
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  side: BorderSide(
                                    width: 2,
                                    style: BorderStyle.solid,
                                    color: Color(0xFF34A853),
                                  ),
                                  activeColor: Color(0xFF34A853),
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/charger_icon.svg'),
                                    SizedBox(width: 8),
                                    Text("CCS1 • DC"),
                                  ],
                                ),
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  side: BorderSide(
                                    width: 2,
                                    style: BorderStyle.solid,
                                    color: Color(0xFF34A853),
                                  ),
                                  activeColor: Color(0xFF34A853),
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/charger_icon.svg'),
                                    SizedBox(width: 8),
                                    Text("CCS2 • AC"),
                                  ],
                                ),
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  side: BorderSide(
                                    width: 2,
                                    style: BorderStyle.solid,
                                    color: Color(0xFF34A853),
                                  ),
                                  activeColor: Color(0xFF34A853),
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/charger_icon.svg'),
                                    SizedBox(width: 8),
                                    Text("CCS2 • DC"),
                                  ],
                                ),
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  side: BorderSide(
                                    width: 2,
                                    style: BorderStyle.solid,
                                    color: Color(0xFF34A853),
                                  ),
                                  activeColor: Color(0xFF34A853),
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/charger_icon.svg'),
                                    SizedBox(width: 8),
                                    Text("CCS3 • AC"),
                                  ],
                                ),
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  side: const BorderSide(
                                    width: 2,
                                    style: BorderStyle.solid,
                                    color: Color(0xFF34A853),
                                  ),
                                  activeColor: Color(0xFF34A853),
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/charger_icon.svg'),
                                    SizedBox(width: 8),
                                    Text("CCS3 • DC"),
                                  ],
                                ),
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  side: const BorderSide(
                                    width: 2,
                                    style: BorderStyle.solid,
                                    color: Color(0xFF34A853),
                                  ),
                                  activeColor: Color(0xFF34A853),
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],*/
                        ),
                      ),
                      const Divider(
                        color: Color(0xFFCBCBCB),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            // Toggle State on Tap
                            showIncompatiblePlugs = !showIncompatiblePlugs;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Show incompatible Plugs",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            Icon(
                              showIncompatiblePlugs
                                  ? Icons.keyboard_arrow_up_outlined
                                  : Icons.keyboard_arrow_down_outlined,
                              size: 30,
                            ),
                          ],
                        ),
                      ),

                      // Conditional Rendering
                      if (showIncompatiblePlugs)
                        Container(
                          padding: const EdgeInsets.only(left: 12),
                          height: 300,
                          // Set a fixed height for the scrollable area
                          child: ListView.builder(
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/icons/charger_icon.svg'),
                                      SizedBox(width: 8),
                                      Text(
                                          "CCS${(index + 1) % 2 == 0 ? ((index + 1) ~/ 2) : ((index + 1) ~/ 2 + 1)} • ${index % 2 == 0 ? 'AC' : 'DC'}"),
                                    ],
                                  ),
                                  Checkbox(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    side: BorderSide(
                                      width: 2,
                                      style: BorderStyle.solid,
                                      color: Color(0xFF34A853),
                                    ),
                                    activeColor: Color(0xFF34A853),
                                    checkColor: Colors.white,
                                    value: isCheckedList[index + 6],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isCheckedList[index + 6] = value!;
                                      });
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              ),

              // Power Output
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFE9E9E9),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Power Output",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFCBCBCB),
                      ),
                      SfRangeSliderTheme(
                        data: SfRangeSliderThemeData(
                          activeTrackColor: Color(0xFF34A853),
                          inactiveTrackColor: Color(0xFFE1F7C5),
                          thumbColor: Colors.white,
                          thumbStrokeColor: Color(0xFF34A853),
                          thumbStrokeWidth: 2,
                          tooltipBackgroundColor: Color(0xFF34A853),
                          tooltipTextStyle: TextStyle(
                            color: Colors.white,
                          ),
                          activeLabelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        child: SfRangeSlider(
                          min: 0,
                          max: 360,
                          values: _currentRangeValues,
                          showLabels: true,
                          interval: 60,
                          enableTooltip: true,
                          tooltipTextFormatterCallback:
                              (dynamic actualValue, String formattedText) {
                            return actualValue.round().toString();
                          },
                          onChanged: (dynamic values) {
                            setState(() {
                              _currentRangeValues = values;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // buttons "reset" and "apply filter"
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    // Reset button

                    Button(
                      onTap: () {
                        print("Reset pressed");
                      },
                      fillColor: Color(0xFFBCDEC5),
                      border: false,
                      shadow: true,
                      shadowOpacity: 0.25,
                      child: Text(
                        "Reset",
                        style:
                            TextStyle(color: Color(0xFF34A853), fontSize: 17),
                      ),
                    ),

                    const SizedBox(
                      width: 20,
                    ),
                    // Apply Filter button
                    Button(
                      onTap: () {
                        print("Apply pressed");
                      },
                      fillColor: Color(0xFF34A853),
                      border: false,
                      shadow: true,
                      shadowOpacity: 0.35,
                      child: Text(
                        "Apply Filter",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
