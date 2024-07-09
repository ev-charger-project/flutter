import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChargersContent extends StatelessWidget {
  const ChargersContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: const Text(
        'Charger Content',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
