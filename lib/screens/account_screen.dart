import 'package:flutter/material.dart';
import 'package:flutter_insta/widgets/account_tab.dart';
import 'package:flutter_insta/widgets/buble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //profile pic
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                  ),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //posts
                        Column(
                          children: const [
                            Text(
                              "100",
                              style: TextStyle(
                                  fontSize: 28.0, fontWeight: FontWeight.bold),
                            ),
                            Text("Posts"),
                          ],
                        ),

                        //following
                        Column(
                          children: const [
                            Text(
                              "1780",
                              style: TextStyle(
                                  fontSize: 28.0, fontWeight: FontWeight.bold),
                            ),
                            Text("Followers"),
                          ],
                        ),

                        //followers
                        Column(
                          children: const [
                            Text(
                              "537",
                              style: TextStyle(
                                  fontSize: 28.0, fontWeight: FontWeight.bold),
                            ),
                            Text("Following"),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "@alxayeed",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Traveller, Dreamer, Software Developer",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Text(
                    "alxayeed.com",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.blue),
                  )
                ],
              ),
            ),

            //buttons
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const Center(child: Text("Edit Profile")),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const Center(child: Text("Ad Tools")),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const Center(child: Text("Insights")),
                      ),
                    ),
                  )
                ],
              ),
            ),

            //stories
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return BubbleStories(name: "Story ${index + 1}");
                },
              ),
            ),

            const TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    child: Icon(Icons.grid_3x3_outlined),
                  ),
                  Tab(
                    child: Icon(Icons.video_call),
                  ),
                  Tab(
                    child: Icon(Icons.shop),
                  ),
                  Tab(
                    child: Icon(Icons.person),
                  ),
                ]),
            const Expanded(
                child: TabBarView(children: [
              AccountTab(color: Colors.amber),
              AccountTab(color: Colors.green),
              AccountTab(color: Colors.purple),
              AccountTab(color: Colors.cyan),
            ])),
          ],
        ),
      ),
    );
  }
}
