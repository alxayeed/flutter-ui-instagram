import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  String name;
  BubbleStories({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(name)
        ],
      ),
    );
  }
}
