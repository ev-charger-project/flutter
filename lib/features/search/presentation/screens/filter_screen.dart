import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/presentation/widgets/button.dart';
import 'package:ev_charger/features/search/presentation/widgets/widgets.dart';

@RoutePage()
class FilterScreen extends ConsumerStatefulWidget {
  const FilterScreen({super.key});

  @override
  ConsumerState createState() => _FilterScreenState();
}

class _FilterScreenState extends ConsumerState<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(
            top: screenSize.height * 0.05,
            left: screenSize.width * 0.05,
            right: screenSize.width * 0.05,
          ),
          child: Row(
            children: [
              IconButton(
                icon: SvgPicture.asset('assets/icons/close_icon.svg'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                width: screenSize.width * 0.02,
              ),
              Text(
                'Filter',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: screenSize.width * 0.075,
            right: screenSize.width * 0.075,
            top: screenSize.height * 0.01,
            bottom: screenSize.height * 0.03,
          ),
          child: Column(
            children: [
              // station count
              StationCount(),

              // charge type
              const ChargeType(),

              // Power Output
              const PowerOutput(),

              // buttons "reset" and "apply filter"
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    // Reset button
                    Button(
                      onTap: () {
                        print("Reset pressed");
                      },
                      fillColor: Color(0xFFBCDEC5),
                      border: false,
                      shadow: true,
                      shadowOpacity: 0.25,
                      child: const Text(
                        "Reset",
                        style:
                            TextStyle(color: Color(0xFF34A853), fontSize: 17),
                      ),
                    ),

                    const SizedBox(
                      width: 20,
                    ),

                    // Apply Filter button
                    Button(
                      onTap: () {
                        print("Apply pressed");
                      },
                      fillColor: Color(0xFF34A853),
                      border: false,
                      shadow: true,
                      shadowOpacity: 0.35,
                      child: const Text(
                        "Apply Filter",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
