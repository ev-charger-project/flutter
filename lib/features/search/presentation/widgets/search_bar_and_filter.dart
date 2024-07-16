import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarAndFilter extends ConsumerWidget {
  final TextEditingController controller;
  final Function(String) onChanged;
  final bool isTyping;
  final VoidCallback onFilterPressed;

  const SearchBarAndFilter({
    Key? key,
    required this.controller,
    required this.onChanged,
    required this.isTyping,
    required this.onFilterPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFECE6F0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Search stations',
                hintStyle: TextStyle(
                  color:
                      isTyping ? Colors.black : Colors.black.withOpacity(0.65),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color:
                      isTyping ? Colors.black : Colors.black.withOpacity(0.65),
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
                color: isTyping ? Colors.black : Colors.black.withOpacity(0.65),
              ),
              onChanged: onChanged,
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
            onPressed: onFilterPressed,
          ),
        ),
      ],
    );
  }
}
