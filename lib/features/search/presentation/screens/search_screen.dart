import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/search/presentation/widgets/search_bar_and_filter.dart';
import 'package:ev_charger/shared/presentation/widgets/bottom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../routes/app_route.dart';
import '../../domain/providers/search_query_provider.dart';
import '../widgets/suggestion_list.dart';

@RoutePage()
class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController _searchController = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: SearchBarAndFilter(
              controller: _searchController,
              onChanged: (text) {
                ref.read(SearchQueryProvider.notifier).state = text;
              },
              isTyping: true,
              onFilterPressed: () => context.router.push(FilterRoute()),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: const SuggestionList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const SimpleBottomAppBar(),
    );
  }
}
