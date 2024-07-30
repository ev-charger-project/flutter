import 'package:ev_charger/features/search/domain/providers/search_icon_color_provider.dart';
import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

import '../../../../shared/core/localization/localization.dart';

class SearchBarAndFilter extends ConsumerWidget {
  final TextEditingController controller;
  final Function(String) onChanged;

  final FocusNode? focusNode;
  final VoidCallback onFilterPressed;
  final bool textFieldInteractable;

  const SearchBarAndFilter({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.focusNode,
    required this.onFilterPressed,
    this.textFieldInteractable = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconColor = ref.watch(SearchIconColorProvider);
    final screenSize = MediaQuery.of(context).size;

    // Define responsive values
    final double fontSize = 14;
    final EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: 10, vertical: 20);
    final double iconSize = 20;

    // Implementing Debouncing for Search Bar (input delay)
    Timer? _debounce;

    void _onSearchChanged(String query) {
      if (_debounce?.isActive ?? false) _debounce?.cancel();
      _debounce = Timer(const Duration(milliseconds: 350), () {
        onChanged(query);
      });
    }

    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).lightGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IgnorePointer(
                ignoring: !textFieldInteractable,
                child: TextField(
                  focusNode: focusNode,
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context).translate('Search stations'),
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.65),
                      fontSize: fontSize,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: iconColor,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Theme.of(context).darkerLightGreen,
                        width: 2,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(8.0),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Exo',
                    fontSize: fontSize,
                  ),
                  onChanged: _onSearchChanged,
                ),
              ),
            ),
          ),
          SizedBox(width: screenSize.width * 0.015),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).lightGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/filter_icon.svg',
                width: iconSize,
                height: iconSize,
              ),
              onPressed: onFilterPressed,
            ),
          ),
        ],
      ),
    );
  }
}
