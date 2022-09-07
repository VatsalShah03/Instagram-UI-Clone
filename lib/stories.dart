import 'package:flutter/material.dart';
import 'package:instagram/my_flutter_app_icons.dart';

class UserStories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
           Stack(
             alignment: AlignmentDirectional.bottomEnd,
             children: [CircleAvatar(
                backgroundImage: AssetImage('Assets/img.png'),
                radius: 30,
              ),
               Container(
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.lightBlue,
                 ),
                   child: Icon(Icons.add, color: Colors.white,size: 20))
           ])
        ]),
        Row(
          children: [
            Text(
              'User',
              style: TextStyle(color: Colors.white, fontFamily: 'Lato'),
            )
          ],
        )
      ]),
    );
  }
}

class Stories extends StatelessWidget {
  String storyPath;
  Stories({required this.storyPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('Assets/colour.jpg'),
                radius: 30,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('Assets/black.png'),
                radius: 29.5,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(storyPath),
                radius: 25,
              ),]
          ),
        ]),
        Row(
          children: [
            Text(
              'User',
              style: TextStyle(color: Colors.white, fontFamily: 'Lato'),
            )
          ],
        )
      ]),
    );
  }
}