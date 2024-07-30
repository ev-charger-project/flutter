import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class PowerOutput extends ConsumerStatefulWidget {
  const PowerOutput({super.key});

  @override
  ConsumerState createState() => _PowerOutputState();
}

class _PowerOutputState extends ConsumerState<PowerOutput> {
  // Define Sf Range Slider values
  SfRangeValues _currentRangeValues = const SfRangeValues(0, 120);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).powerOutputGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text("Power Output",
                    style: Theme.of(context).primaryTextTheme.displaySmall),
              ],
            ),
            Divider(
              color: Theme.of(context).dividerColor,
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
    );
  }
}
