import 'dart:convert';
import 'package:auto_route/annotations.dart';
import 'package:ev_charger/shared/presentation/widgets/bottom_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _suggestions = [];

  // check if user is typing in the search bar
  bool _isTyping = false;

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
    });

    final response = await http
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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 60,
            bottom: 60,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFECE6F0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Search stations',
                          hintStyle: TextStyle(
                            color: _isTyping
                                ? Colors.black
                                : Colors.black.withOpacity(0.65),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: _isTyping
                                ? Colors.black
                                : Colors.black.withOpacity(0.65),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFA8CAB1),
                              width: 2,
                            ),
                          ),
                          contentPadding: EdgeInsets.all(8.0),
                        ),
                        style: TextStyle(
                          color: _isTyping
                              ? Colors.black
                              : Colors.black.withOpacity(0.65),
                        ),
                        onChanged: (value) {
                          _getSuggestions(value);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFECE6F0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/filter_icon.svg',
                        width: 20,
                        height: 20,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/filter');
                      },
                    ),
                  ),
                ],
              ),
              if (_suggestions.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _suggestions.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_suggestions[index]),
                        onTap: () {
                          // Handle suggestion tap
                        },
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SimpleBottomAppBar(),

      /*BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home_icon.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/route_icon.svg'),
            label: 'Route',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/account_icon.svg'),
            label: 'Account',
          ),
        ],
      ),*/
    );
  }
}
