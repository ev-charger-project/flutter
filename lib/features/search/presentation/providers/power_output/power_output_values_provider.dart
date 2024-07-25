import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

final rangeValuesProvider =
    StateProvider<SfRangeValues>((ref) => const SfRangeValues(0, 120));
