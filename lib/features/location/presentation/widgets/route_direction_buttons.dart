import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteDirectionButtons extends StatelessWidget {
  const RouteDirectionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double size = 18;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Route Plan',
                style: Theme.of(context).primaryTextTheme.bodyMedium
              ),
            ),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.015),
        Expanded(
          child: SizedBox(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Direction',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
