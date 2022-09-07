import 'package:flutter/material.dart';
import 'package:instagram/chat_page.dart';
import 'stories.dart';
import 'posts.dart';
import 'my_flutter_app_icons.dart';
import 'chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Instagram',
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontFamily: 'Billabong'),
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            label: Text(''),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black)),
          ),
          ElevatedButton.icon(
            onPressed:  () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage()),
              );
            },
            icon: Icon(
              MyFlutterApp.facebook_messenger,
            ),
            label: Text(''),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black)),
          )
        ],
      ),
     body: ListView(
       children: [
              Container(
                  height: 110,
                  color: Colors.black,
                  child: (
                      ListView(
                          scrollDirection: Axis.horizontal, children: [
                        UserStories(),
                        Stories(storyPath: 'Assets/images (11).jpg'),
                        Stories(storyPath: 'Assets/images (10).jpg'),
                        Stories(storyPath: 'Assets/images (9).jpg'),
                        Stories(storyPath: 'Assets/images (8).jpg'),
                        Stories(storyPath: 'Assets/images (7).jpg'),
                        Stories(storyPath: 'Assets/images (6).jpg'),
                        Stories(storyPath: 'Assets/images (5).jpg'),
                      ]
                      )
                  )
              ),

              // Divider(
              //   height: 5,
              //   color: Colors.grey[800],
              // ),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Posts(),
                    Posts(),
                    Posts(),
                    Posts(),
                    Posts(),
                  ],
                ),
              ),
            ]
     ),
    );
  }
}
