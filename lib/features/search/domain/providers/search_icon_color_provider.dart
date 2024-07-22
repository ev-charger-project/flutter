import 'package:ev_charger/features/search/domain/providers/search_query_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final SearchIconColorProvider = StateProvider<Color>((ref) {
  var textController = ref.watch(SearchQueryProvider);
  return textController.isEmpty
      ? Colors.black.withOpacity(0.45)
      : Color(0xFF49454F);
});
