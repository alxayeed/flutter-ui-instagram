import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  Color color;
  ExploreGrid({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 21,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: color,
            ),
          );
        });
  }
}
