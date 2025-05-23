import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/search/presentation/widgets/search_bar_and_filter.dart';
import 'package:ev_charger/shared/presentation/widgets/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../routes/app_route.dart';
import '../../domain/providers/search_query_provider.dart';
import '../widgets/history_list.dart';
import '../widgets/suggestion_list.dart';

@RoutePage()
class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  late TextEditingController _searchController;
  late FocusNode _searchFocusNode;

  @override
  void initState() {
    super.initState();
    final currentSearchQuery = ref.read(SearchQueryProvider);
    _searchController = TextEditingController(text: currentSearchQuery);
    _searchFocusNode = FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _searchFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    ref.read(SearchQueryProvider.notifier).state = '';
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final searchQuery = ref.watch(SearchQueryProvider);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: screenSize.height * 0.05,
                left: screenSize.width * 0.05,
                right: screenSize.width * 0.05,
              ),
              child: SearchBarAndFilter(
                controller: _searchController,
                focusNode: _searchFocusNode,
                onChanged: (text) {
                  ref.read(SearchQueryProvider.notifier).state = text;
                },
                onFilterPressed: () => context.router.push(const FilterRoute()),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: screenSize.width * 0.03,
                  right: screenSize.width * 0.03,
                ),
                child: searchQuery.isEmpty
                    ? const HistoryList()
                    : const SuggestionList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const SimpleBottomAppBar(),
    );
  }
}
