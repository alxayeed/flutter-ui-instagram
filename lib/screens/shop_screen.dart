import 'package:flutter/material.dart';
import 'package:flutter_insta/widgets/explore_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[700],
                ),
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey[700]),
                )
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(color: Colors.cyan),
    );
  }
}
