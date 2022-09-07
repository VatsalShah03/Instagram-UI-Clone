import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Expanded(child: Text('UserName', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
        actions: [Icon(Icons.video_call_outlined, color: Colors.white,size: 35,),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.add,color: Colors.white,size: 35,)],
      ),
      body: ListView(
        children: [
        Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 30, 20),
            child: TextField(
            controller: null,
            autofocus: false,

            style:
            new TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
            decoration: new InputDecoration(
              filled: true,

              fillColor: Colors.grey[800],
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
              contentPadding: const EdgeInsets.only(
                  left: 14.0, bottom: 8.0, top: 8.0),
              focusedBorder: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.white),
                borderRadius: new BorderRadius.circular(20),
              ),
              enabledBorder: UnderlineInputBorder(
                // borderSide: new BorderSide(color: Colors.white),
                borderRadius: new BorderRadius.circular(20),
              ),
            ),
      ),
          ),
        ),

          Chat1(),
          Chat6(),
          Chat5(),
          Chat2(),
          Chat3(),
          Chat4(),
          Chat6(),
          Chat3(),
          Chat4(),
          Chat5(),
          Chat1(),
          Chat6(),
          Chat5(),
          Chat2(),
          Chat3(),
          Chat4(),
          Chat6(),
          Chat3(),
          Chat4(),
          Chat5(),
        ],
      ),
    );
  }
}

class Chat1 extends StatelessWidget {
  const Chat1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        leading:  CircleAvatar(
          backgroundImage: AssetImage('Assets/img.png'),
          radius: 25,
        ),
        title: Text('UserName', style: TextStyle(color: Colors.white, fontSize: 18),),
        subtitle: Text('Sent Xh ago', style: TextStyle(color: Colors.grey, fontSize: 15)),
        trailing: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 25,),
      ),
    );
  }
}
class Chat2 extends StatelessWidget {
  const Chat2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        leading:  CircleAvatar(
          backgroundImage: AssetImage('Assets/download (12).jpg'),
          radius: 25,
        ),
        title: Text('UserName', style: TextStyle(color: Colors.white, fontSize: 18),),
        subtitle: Text('Mentioned you in a story • 1d', style: TextStyle(color: Colors.grey, fontSize: 15)),
        trailing: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 25,),
      ),
    );
  }
}
class Chat3 extends StatelessWidget {
  const Chat3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        leading:  CircleAvatar(
          backgroundImage: AssetImage('Assets/download (13).jpg'),
          radius: 25,
        ),
        title: Text('UserName', style: TextStyle(color: Colors.white, fontSize: 18),),
        subtitle: Text('Reacted 😂 to your message • 2d ', style: TextStyle(color: Colors.grey, fontSize: 15)),
        trailing: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 25,),
      ),
    );
  }
}
class Chat4 extends StatelessWidget {
  const Chat4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        leading:  CircleAvatar(
          backgroundImage: AssetImage('Assets/img.png'),
          radius: 25,
        ),
        title: Text('UserName', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
        subtitle: Text('2 new messages', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 25,),
      ),
    );
  }
}

class Chat5 extends StatelessWidget {
  const Chat5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        leading:  CircleAvatar(
          backgroundImage: AssetImage('Assets/images (7).jpg'),
          radius: 25,
        ),
        title: Text('UserName', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
        subtitle: Text('Sent you a post ', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 25,),
      ),
    );
  }
}
class Chat6 extends StatelessWidget {
  const Chat6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        leading:  CircleAvatar(
          backgroundImage: AssetImage('Assets/download (14).jpg'),
          radius: 25,
        ),
        title: Text('UserName', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
        subtitle: Text('😂😂😂', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 25,),
      ),
    );
  }
}
