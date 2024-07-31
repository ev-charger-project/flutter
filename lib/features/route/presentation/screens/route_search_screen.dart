import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/route/presentation/providers/from_search_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../../search/domain/providers/search_query_provider.dart';
import '../../../search/presentation/widgets/suggestion_list.dart';
import '../providers/to_search_provider.dart';
import '../widgets/route_suggestion_list.dart';
import '../widgets/search_button.dart';

@RoutePage()
class RouteSearchScreen extends ConsumerStatefulWidget {
  const RouteSearchScreen({Key? key}) : super(key: key);

  @override
  _RouteSearchScreenState createState() => _RouteSearchScreenState();
}

class _RouteSearchScreenState extends ConsumerState<RouteSearchScreen> {
  late TextEditingController _fromSearchController;
  late TextEditingController _toSearchController;

  @override
  void initState() {
    super.initState();
    final fromSearchQuery = ref.read(FromSearchProvider);
    final toSearchQuery = ref.read(ToSearchProvider);

    _fromSearchController = TextEditingController(text: fromSearchQuery);
    _toSearchController = TextEditingController(text: toSearchQuery);
  }

  @override
  void dispose() {
    _fromSearchController.dispose();
    _toSearchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final toSearchQuery = ref.watch(ToSearchProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.router.pop(),
        ),
        title: Text(
          AppLocalizations.of(context).translate('Route Search'),
          style: Theme.of(context).textTheme.displayLarge,
        ),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              AppLocalizations.of(context).translate('From'),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context).translate('Your Location'),
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(),
                    ),
                    SvgPicture.asset(
                      'assets/icons/location_icon.svg',
                      width: 20,
                      height: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              AppLocalizations.of(context).translate('To'),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _toSearchController,
                        decoration: InputDecoration(
                          hintText: AppLocalizations.of(context)
                              .translate('Choose Destination'),
                          border: InputBorder.none,
                        ),
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Colors.grey,
                            ),
                        onChanged: (text) {
                          ref.read(ToSearchProvider.notifier).state = text;
                        },
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/location_icon.svg',
                      width: 20,
                      height: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: screenSize.width * 0.03,
                right: screenSize.width * 0.03,
              ),
              child: toSearchQuery.isEmpty
                  ? Center(
                      child: Text(
                        AppLocalizations.of(context)
                            .translate('Enter search text to see results.'),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    )
                  : const RouteSuggestionList(),
            ),
          ),
          const SearchRouteButton(),
        ],
      ),
    );
  }
}
