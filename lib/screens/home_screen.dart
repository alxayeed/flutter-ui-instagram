import 'package:flutter/material.dart';
import 'package:flutter_insta/widgets/buble_stories.dart';
import 'package:flutter_insta/widgets/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key}) : super(key: key);

  final List users = [
    "Abdullah",
    "Al",
    "Sayeed",
    "Hulo",
    "Tingting",
    "Vanu",
    "Habu",
    "Tuni"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            "Instagram",
            style: TextStyle(color: Colors.black),
          ),
          Row(
            children: const [
              Icon(Icons.add),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.favorite),
              ),
              Icon(Icons.share),
            ],
          )
        ]),
      ),
      body: Column(
        children: [
          // Stories
          SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return BubbleStories(name: users[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  height: 10.0,
                  thickness: 12.0,
                  color: Colors.black,
                );
              },
            ),
          ),

          //Posts
          Expanded(
            child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  return UserPosts(name: users[index]);
                }),
          )
        ],
      ),
    );
  }
}
