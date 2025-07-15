import 'dart:developer';

import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/charge_type/checked_plugs_provider.dart';
import '../providers/charge_type/hidden_plugs_provider.dart';
import '../providers/charge_type/show_incompatible_plugs_provider.dart';
import '../providers/charge_type/visible_plugs_provider.dart';

import '../../../../shared/core/localization/localization.dart';

class ChargeType extends ConsumerStatefulWidget {
  const ChargeType({super.key});

  @override
  ConsumerState createState() => _ChargeTypeState();
}

class _ChargeTypeState extends ConsumerState<ChargeType> {
  void _toggleAll() {
    final visiblePlugs = ref.read(visiblePlugsProvider.notifier);
    final hiddenPlugs = ref.read(hiddenPlugsProvider.notifier);
    final showIncompatiblePlugs =
        ref.read(showIncompatiblePlugsProvider.notifier);

    bool shouldDetoggle = visiblePlugs.state.any((plug) => plug.isChecked) ||
        hiddenPlugs.state.any((plug) => plug.isChecked);

    visiblePlugs.state = visiblePlugs.state
        .map((plug) => plug.copyWith(isChecked: !shouldDetoggle))
        .toList();

    hiddenPlugs.state = hiddenPlugs.state
        .map((plug) => plug.copyWith(isChecked: !shouldDetoggle))
        .toList();
    if (!showIncompatiblePlugs.state) {
      showIncompatiblePlugs.state = true;
    }
    ref.read(checkedPlugsProvider.notifier).updateCheckedPlugs();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final visiblePlugs = ref.watch(visiblePlugsProvider);
    final hiddenPlugs = ref.watch(hiddenPlugsProvider);
    final showIncompatiblePlugs = ref.watch(showIncompatiblePlugsProvider);
    final checkedPlugs = ref.watch(checkedPlugsProvider);
    final totalPlugs = visiblePlugs.length + hiddenPlugs.length;

    log('checkedPlugs: $checkedPlugs');
    log('totalPlugs: $totalPlugs');

    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.014),
      child: Container(
        padding: EdgeInsets.all(screenSize.height * 0.014),
        decoration: BoxDecoration(
          color: Color(0xFFE9E9E9),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context).translate("Charge Type "),
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      "($checkedPlugs of $totalPlugs)",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: _toggleAll,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.primary,
                    backgroundColor:
                        Theme.of(context).moreGrey.withOpacity(0.96),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.024,
                    ),
                  ),
                  child: Text(
                    AppLocalizations.of(context).translate("Toggle All"),
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Theme.of(context).primaryColor),
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
