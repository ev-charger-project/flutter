
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: ElevatedButton(
            onPressed: () {
              // Handle start button press
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            child: Text(
              'Start',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Theme.of(context).colorScheme.secondary,fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}
