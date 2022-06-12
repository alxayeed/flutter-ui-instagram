// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  String name;

  UserPosts({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Profile pic
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[500]),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    //name
                    Text(name),
                  ],
                ),
                //menu icon
                const Icon(Icons.menu)
              ],
            ),
          ),
          // photo
          Container(
            height: 350,
            color: Colors.grey[400],
          ),
          //reactions
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Icon(Icons.chat_bubble_outline),
                    ),
                    Icon(Icons.share),
                  ],
                ),
                Icon(Icons.bookmark),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Liked by "),
                Text(" Al ", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(" and "),
                Text(" 52 others",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          //caption
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: "The Alchemist",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text:
                        " If you want something so intensly, the world will try to bring it for you",
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
