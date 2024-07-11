import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChargeType extends ConsumerStatefulWidget {
  const ChargeType({super.key});

  @override
  ConsumerState createState() => _ChargeTypeState();
}

class _ChargeTypeState extends ConsumerState<ChargeType> {
  // List of Booleans for each checkbox's state
  List<bool> isCheckedList = List<bool>.filled(12, false);

  // Define a Boolean State of the Plugs
  bool showIncompatiblePlugs = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                          SvgPicture.asset('assets/icons/charger_icon.svg'),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/charger_icon.svg'),
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
    );
  }
}
