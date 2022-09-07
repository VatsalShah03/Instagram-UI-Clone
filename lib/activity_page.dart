import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Activity', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          ListTile(
            leading: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [CircleAvatar(
                backgroundImage: AssetImage('Assets/images (9).jpg'),
                radius: 27,
              ),
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.redAccent,
                ),
                child: Text('99', style: TextStyle(color: Colors.white, fontSize: 14)),
              )]
            ),
            title: Text('Follow requests',  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            subtitle: Text('Approve or ignore requests', style: TextStyle(color: Colors.grey),),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 15, top: 10,),
                  child: Text('Today',  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)))
            ],
          ),
          Activity5(),
          Activity1(),
          Activity2(),
          Activity3(),
          Activity4(),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 15, top: 15,),
                  child: Text('This week',  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold))),
            ],
          ),
          Activity3(),
          Activity5(),
          Activity1(),
          Activity3(),
          Activity4(),
          Activity2(),
          Activity2(),
          Activity3(),
          Activity5(),
          Activity1(),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 15, top: 15,),
                  child: Text('This month',  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold))),
            ],
          ),
          Activity3(),
          Activity5(),
          Activity1(),
          Activity3(),
          Activity4(),
          Activity2(),
          Activity2(),
          Activity3(),
          Activity5(),
          Activity1(),
        ],
      ),
    );
  }
}class Activity1 extends StatelessWidget {
  const Activity1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 15, 0, 0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 27,
          backgroundImage: AssetImage('Assets/images (10).jpg'),
        ),
        title: Text('User mentioned you in a comment: *****',
          style: TextStyle(color: Colors.white),),
        trailing: Image.asset(
          'Assets/download (11).jpg', width: 40, height: 50,),
      ),
    );
  }
}
class Activity2 extends StatelessWidget {
  const Activity2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 15, 0, 0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 27,
          backgroundImage: AssetImage('Assets/images (10).jpg'),
        ),
        title: Text('User liked your comment: /*-/*-',
          style: TextStyle(color: Colors.white),),
        trailing: Image.asset(
          'Assets/download (11).jpg', width: 40, height: 50,),
      ),
    );
  }
}

class Activity3 extends StatelessWidget {
  const Activity3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 15, 0, 0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 27,
          backgroundImage: AssetImage('Assets/download (12).jpg'),
        ),
        title: Text('User requested to follow you.',
          style: TextStyle(color: Colors.white),),
        trailing: TextButton(onPressed: (){},
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
          child: Text('Confirm', style: TextStyle(color: Colors.white),),
        )
      ),
    );
  }
}

class Activity4 extends StatelessWidget {
  const Activity4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 15, 0, 0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 27,
          backgroundImage: AssetImage('Assets/download (14).jpg'),
        ),
        title: Text('User liked your photo.',
          style: TextStyle(color: Colors.white),),
        trailing: Image.asset(
          'Assets/download (13).jpg', width: 40, height: 50,),
      ),
    );
  }
}

class Activity5 extends StatelessWidget {
  const Activity5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 15, 0, 0),
      child: ListTile(
          leading: CircleAvatar(
            radius: 27,
            backgroundImage: AssetImage('Assets/images (11).jpg'),
          ),
          title: Text('User , from your contacts is on Instagram as UserName',
            style: TextStyle(color: Colors.white),),
          trailing: TextButton(onPressed: (){},
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
            child: Text('Follow', style: TextStyle(color: Colors.white),),
          )
      ),
    );
  }
}