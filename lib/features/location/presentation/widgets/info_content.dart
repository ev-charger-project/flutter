import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoContent extends StatefulWidget {
  const InfoContent({super.key});

  @override
  _InfoContentState createState() => _InfoContentState();
}

class _InfoContentState extends State<InfoContent> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final String longText =
        "Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually ";

    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            'About',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            longText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
            maxLines: isExpanded ? null : 4,
            overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Read less' : 'Read more',
              style: const TextStyle(
                color: Colors.green,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
