import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.cancel_outlined,
                      size: 30,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Filter',
                    style: Theme.of(context).textTheme.displayLarge,
                    /*TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),*/
                  ),
                ],
              ),

              // station count
              StationCount(),

              // charge type
              ChargeType(),

              // Power Output
              PowerOutput(),

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
                      child: Text(
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
                      child: Text(
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
