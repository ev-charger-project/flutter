import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoContent extends StatefulWidget {
  const InfoContent({super.key});

  @override
  _InfoContentState createState() => _InfoContentState();
}

class _InfoContentState extends State<InfoContent> {
  bool isExpanded = false;

  final List<Map<String, String>> data = [
    {'Open Hours': '06:00 - 23:00'},
    {'Fee': '10\$/hours & parking fee'},
    {'Phone': '197498465'},
    {'Parking Level': 'B2-B3'},
  ];
  final String longText =
      "Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually Super long text goes here ventually ";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          ...List.generate(
            data.length,
            (index) => Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                color: Color(0x99e8e8e8),
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data[index].keys.first,
                      style: const TextStyle(color: Colors.black),
                    ),
                    Text(
                      data[index].values.first,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical:10.0),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          const Text(
            'Nearby',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 200,)


        ],
      ),
    );
  }
}
