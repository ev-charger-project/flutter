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
    );
  }
}
