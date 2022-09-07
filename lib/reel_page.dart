import 'package:flutter/material.dart';
import 'package:instagram/my_flutter_app_icons.dart';

class Reel extends StatefulWidget {
  const Reel({Key? key}) : super(key: key);

  @override
  State<Reel> createState() => _ReelState();
}

class _ReelState extends State<Reel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Reel1(),
          Reel3(),
          Reel2(),
        ],
      ),
    );
  }
}

class Reel1 extends StatelessWidget {
  const Reel1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            color: Colors.deepPurple[300],
          ),
          Padding(padding: EdgeInsets.only(right: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(MyFlutterApp.heart_empty, color: Colors.white,),
                SizedBox(height: 15,),
                Text('999', style: TextStyle(color: Colors.white),),
                SizedBox(height: 15,),
                Icon(MyFlutterApp.comment,  color: Colors.white,),
                SizedBox(height: 15,),
                Text('999', style: TextStyle(color: Colors.white),),
                SizedBox(height: 15,),
                Icon(MyFlutterApp.direction_outline,  color: Colors.white,),
                SizedBox(height: 15,),
                Icon(Icons.more_vert_outlined,  color: Colors.white,),
                SizedBox(height: 15,),
                Container(
                  width: 35,height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2, ),
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: Image.asset('Assets/images (4).jpg', fit: BoxFit.fill,)
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('Assets/images (4).jpg'),
                      radius: 20,
                    ),
                    SizedBox(width: 15,),
                    Text('UserName', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('----Caption----', style: TextStyle(color: Colors.white,))
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.music_note_outlined, color: Colors.white,),
                    Text('User • Song Name', style: TextStyle(color: Colors.white,)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Reel2 extends StatelessWidget {
  const Reel2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            color: Colors.lightBlueAccent,
          ),
          Padding(padding: EdgeInsets.only(right: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(MyFlutterApp.heart_empty, color: Colors.white,),
                SizedBox(height: 15,),
                Text('9999', style: TextStyle(color: Colors.white),),
                SizedBox(height: 15,),
                Icon(MyFlutterApp.comment,  color: Colors.white,),
                SizedBox(height: 15,),
                Text('9999', style: TextStyle(color: Colors.white),),
                SizedBox(height: 15,),
                Icon(MyFlutterApp.direction_outline,  color: Colors.white,),
                SizedBox(height: 15,),
                Icon(Icons.more_vert_outlined,  color: Colors.white,),
                SizedBox(height: 15,),
                Container(
                    width: 35,height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2, ),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: Image.asset('Assets/images (7).jpg', fit: BoxFit.fill,)
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('Assets/images (7).jpg'),
                      radius: 20,
                    ),
                    SizedBox(width: 15,),
                    Text('UserName', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('----Caption----', style: TextStyle(color: Colors.white,))
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.music_note_outlined, color: Colors.white,),
                    Text('User • Song Name', style: TextStyle(color: Colors.white,)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Reel3 extends StatelessWidget {
  const Reel3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            color: Colors.pinkAccent,
          ),
          Padding(padding: EdgeInsets.only(right: 15,bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 15,),
                Icon(MyFlutterApp.heart_empty, color: Colors.white,),
                SizedBox(height: 15,),
                Text('999', style: TextStyle(color: Colors.white),),
                SizedBox(height: 15,),
                Icon(MyFlutterApp.comment,  color: Colors.white,),
                SizedBox(height: 15,),
                Text('999', style: TextStyle(color: Colors.white),),
                SizedBox(height: 15,),
                Icon(MyFlutterApp.direction_outline,  color: Colors.white,),
                SizedBox(height: 15,),
                Icon(Icons.more_vert_outlined,  color: Colors.white,),
                SizedBox(height: 15,),
                Container(
                    width: 35,height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2, ),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: Image.asset('Assets/images (5).jpg', fit: BoxFit.fill,)
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('Assets/images (5).jpg'),
                      radius: 20,
                    ),
                    SizedBox(width: 15,),
                    Text('UserName', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('----Caption----', style: TextStyle(color: Colors.white,))
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.music_note_outlined, color: Colors.white,),
                    Text('User • Song Name', style: TextStyle(color: Colors.white,)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
