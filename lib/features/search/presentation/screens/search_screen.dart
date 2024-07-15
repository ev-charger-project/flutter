import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/search/presentation/widgets/search_bar_and_filter.dart';
import 'package:ev_charger/shared/presentation/widgets/bottom_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../routes/app_route.dart';

@RoutePage()
class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> _suggestions = [];

  // check if user is typing in the search bar
  bool _isTyping = false;

  // example dataset
  @override
  void initState() {
    super.initState();
    _suggestions = generateChargerLocationsBasedOnStreetName();
  }

  List<Map<String, String>> generateChargerLocationsBasedOnStreetName() {
    List<Map<String, String>> chargerLocations = [];
    List<String> streetNames = [
      'Main St',
      'Elm St',
      'Pine St',
      'Oak St',
      'Maple St',
      'Birch St',
      'Cedar St',
      'Spruce St',
      'Willow St',
      'Aspen St'
    ];

    for (int i = 0; i < streetNames.length; i++) {
      chargerLocations.add({
        'name': 'Charger @ ${streetNames[i]}',
        'details':
            '${i * 123 + 100} ${streetNames[i]}, City ${String.fromCharCode(65 + i)}',
      });
    }

    return chargerLocations;
  }

  Future<void> _getSuggestions(String query) async {
    if (query.isEmpty) {
      setState(() {
        _suggestions = [];
        _isTyping = false;
      });
      return;
    }

    setState(() {
      _isTyping = true;
      _suggestions = generateChargerLocationsBasedOnStreetName()
          .where((location) =>
              location['name']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });

    /*final response = await http
        .get(Uri.parse('https://api.example.com/locations?query=$query'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        _suggestions = data.map((item) => item['name'] as String).toList();
      });
    } else {
      // Handle error
      setState(() {
        _suggestions = [];
      });
    }*/
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Column(
      children: [
        ListTile(
          title: Row(
            children: [
              SvgPicture.asset(
                'assets/icons/station_marker.svg',
                width: 50,
                height: 50,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _suggestions[index]['name']!,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      _suggestions[index]['details']!,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
          onTap: () => print("Location tapped"),
        ),
        Divider(
          color: Theme.of(context).dividerColor,
          thickness: 1,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            child: SearchBarAndFilter(
              controller: _searchController,
              onChanged: _getSuggestions,
              isTyping: _isTyping,
              onFilterPressed: () => context.router.push(FilterRoute()),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, bottom: bottomPadding),
              child: ListView.builder(
                itemCount: _suggestions.length,
                itemBuilder: _buildListItem,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const SimpleBottomAppBar(),
    );

    /*return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 70, left: 30, right: 30, bottom: 30),
          child: Column(
            children: [
              SearchBarAndFilter(
                controller: _searchController,
                onChanged: _getSuggestions,
                isTyping: _isTyping,
                onFilterPressed: () {
                  context.router.push(FilterRoute());
                },
              ),
              if (_suggestions.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _suggestions.length,
                    itemBuilder: _buildListItem,
                  ),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SimpleBottomAppBar(),
    );*/
    /*return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 70, left: 30, right: 30, bottom: 30),
          child: Column(
            children: [
              SearchBarAndFilter(
                controller: _searchController,
                onChanged: _getSuggestions,
                isTyping: _isTyping,
                onFilterPressed: () {
                  context.router.push(FilterRoute());
                },
              ),
              if (_suggestions.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.1),
                  // Adjust this value based on your bottom navigation bar's height
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _suggestions.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/station_marker.svg',
                                  // Station icon
                                  width: 50,
                                  height: 50,
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _suggestions[index]['name']!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium,
                                      ),
                                      Text(
                                        _suggestions[index]['details']!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                            onTap: () {
                              print("Location tapped");
                            },
                          ),
                          Divider(
                            color: Theme.of(context).dividerColor,
                            thickness: 1,
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
      bottomNavigationBar: SimpleBottomAppBar(),
    );*/
  }
}
