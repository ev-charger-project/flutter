import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../routes/app_route.dart';

class SearchBarAndFilter extends ConsumerWidget {
  final TextEditingController controller;

  final Function(String) onChanged;
  final bool isTyping;
  final FocusNode? focusNode;
  final VoidCallback onFilterPressed;
  final bool textFieldInteractable;

  const SearchBarAndFilter({
    Key? key,
    required this.controller,
    required this.onChanged,
    required this.focusNode,
    required this.isTyping,
    required this.onFilterPressed,
    this.textFieldInteractable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    // Define responsive values
    final double fontSize = isPortrait ? 14 : 16;
    final EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: 10, vertical: isPortrait ? 20 : 15);
    final double iconSize = isPortrait ? 20 : 24;

    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFECE6F0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IgnorePointer(
                ignoring: !textFieldInteractable,
                child: TextField(
                  focusNode: focusNode,
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Search stations',
                    hintStyle: TextStyle(

                      color: isTyping
                          ? Colors.black
                          : Colors.black.withOpacity(0.65),
                      fontSize: fontSize,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: isTyping
                          ? Colors.black
                          : Colors.black.withOpacity(0.65),
                      size: iconSize,
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
                    color: isTyping
                        ? Colors.black
                        : Colors.black.withOpacity(0.65),
                    fontFamily: 'Exo',
                    fontSize: fontSize,
                  ),
                  onChanged: onChanged,
                ),
              ),
            ),
          ),
          SizedBox(width: screenSize.width * 0.015),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFECE6F0),
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
