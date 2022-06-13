import 'package:flutter/material.dart';
import 'package:flutter_insta/widgets/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          child: Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey[700]),
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey[700]),
                )
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(
        color: Colors.blue,
      ),
    );
  }
}
