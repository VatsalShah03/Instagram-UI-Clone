import 'package:flutter/material.dart';
import 'package:instagram/my_flutter_app_icons.dart';
class Posts extends StatefulWidget {

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  int noOfLikes = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('Assets/download (1).jpg'),
              ),
              title: Text(
                'UserName',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
            Container(
              width: 375,height: 375,

                child: Image.asset(
                  'Assets/download.jpg',
                  fit: BoxFit.cover,
                )),

            Container(
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            noOfLikes += 1;
                          });
                        },
                        icon: Icon(
                          MyFlutterApp.heart_empty,
                          color: Colors.white,
                          size: 17,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(MyFlutterApp.comment, color: Colors.white, size: 20),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(MyFlutterApp.direction_outline,
                          color: Colors.white, size: 20),
                      SizedBox(
                        width: 250,
                      ),
                      Icon(Icons.bookmark_border_outlined,
                          color: Colors.white, size: 20),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Text(
                        '$noOfLikes likes',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'UserName  ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                          child: Text(
                            'Caption',textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            '------------------------------------------------------------------',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            '------------------------------------------------------------------',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                  // SizedBox(height: 30,),
                  Row(
                    children: [
                      Text(
                        'View all 99 comments',
                        style: TextStyle(color: Colors.grey[700]),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundImage:
                            AssetImage('Assets/download (2).jpg'),
                            radius: 15),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: SingleChildScrollView(
                              child: TextField(autofillHints: ['Add a Comment'], style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(hintText: 'Add a comment', hintStyle: TextStyle(color: Colors.grey)),),
                            ),
                            ),
                        Icon(MyFlutterApp.heart, color: Colors.red, size: 20),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.add_box_outlined,
                            color: Colors.white, size: 20)
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'X minutes ago',
                        style: TextStyle(color: Colors.grey[700], fontSize: 11),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class PostImage {
  String imgPath;
  PostImage({required this.imgPath});
}




