import 'package:ev_charger/features/search/domain/providers/search_icon_color_provider.dart';
import 'package:ev_charger/features/search/presentation/providers/search_bar_and_filter/filter_border_color_provider.dart';
import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

import '../../../../shared/core/localization/localization.dart';

class SearchBarAndFilter extends ConsumerStatefulWidget {
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
  _SearchBarAndFilterState createState() => _SearchBarAndFilterState();
}

class _SearchBarAndFilterState extends ConsumerState<SearchBarAndFilter> {
  // Implementing Debouncing for Search Bar (input delay)
  Timer? _debounce;
  bool clearIconVisible = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode?.addListener(_handleFocusChange);
    widget.controller.addListener(_handleTextChange);
  }

  @override
  void dispose() {
    widget.focusNode?.removeListener(_handleFocusChange);
    widget.controller.removeListener(_handleTextChange);
    _debounce?.cancel();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      clearIconVisible = widget.focusNode?.hasFocus ?? false;
    });
  }

  void _handleTextChange() {
    setState(() {
      clearIconVisible = widget.controller.text.isNotEmpty;
    });
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 350), () {
      widget.onChanged(query);
    });
  }

  void _clearTextField() {
    widget.controller.clear();
    widget.onChanged('');
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = ref.watch(SearchIconColorProvider);
    final borderColor = ref.watch(FilterBorderColorProvider);
    final screenSize = MediaQuery.of(context).size;

    // Define responsive values
    final EdgeInsets padding = EdgeInsets.symmetric(
      horizontal: screenSize.width * 0.02,
      vertical: screenSize.height * 0.02,
    );
    final double iconSize = screenSize.width * 0.048;

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
                ignoring: !widget.textFieldInteractable,
                child: TextField(
                  focusNode: widget.focusNode,
                  controller: widget.controller,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)
                        .translate('Search stations'),
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.black.withOpacity(0.65)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: iconColor,
                    ),
                    suffixIcon: clearIconVisible
                        ? IconButton(
                            icon: Icon(Icons.clear, color: iconColor),
                            onPressed: _clearTextField,
                          )
                        : null,
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
                  style: Theme.of(context).textTheme.bodySmall,
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
              border: borderColor != null
                  ? Border.all(
                      color: borderColor,
                      width: 1,
                    )
                  : null,
            ),
            child: borderColor != null
                ? IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/filter_applied_icon.svg',
                      width: iconSize,
                      height: iconSize,
                    ),
                    onPressed: widget.onFilterPressed,
                  )
                : IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/filter_icon.svg',
                      width: iconSize,
                      height: iconSize,
                    ),
                    onPressed: widget.onFilterPressed,
                  ),
          ),
        ],
      ),
    );
  }
}
