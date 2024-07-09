import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteDirectionButtons extends StatelessWidget {
  const RouteDirectionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double width = 150;
    const double height = 40;
    const double size = 18;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width,
            height: height,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.green),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Route Plan',
                style: TextStyle(color: Colors.green, fontSize: size),
              ),
            ),
          ),
          SizedBox(
            width: width,
            height: height,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Direction',
                style: TextStyle(color: Colors.white, fontSize: size),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
