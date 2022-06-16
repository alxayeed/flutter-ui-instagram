import 'package:flutter/material.dart';

class AccountTab extends StatelessWidget {
  final Color color;
  const AccountTab({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 7,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              color: color,
            ),
          );
        });
  }
}
