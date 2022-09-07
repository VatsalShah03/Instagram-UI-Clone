import 'package:flutter/material.dart';
import 'package:instagram/search_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Expanded(child: Text('Username')),
                Icon(Icons.add_box_outlined),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.format_list_bulleted_outlined),
              ],
            )),
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('Assets/download (2).jpg'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Name',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      Text('5',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text('Posts',
                          style: TextStyle(color: Colors.white, fontSize: 14))
                    ],
                  ),
                  Column(
                    children: [
                      Text('999',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text('Followers',
                          style: TextStyle(color: Colors.white, fontSize: 14))
                    ],
                  ),
                  Column(
                    children: [
                      Text('999',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text('Following',
                          style: TextStyle(color: Colors.white, fontSize: 14))
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      padding: EdgeInsets.only(top: 0.1, bottom: 0.1,),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)
                      ),
                        child: TextButton(onPressed: (){}, child: Text('Edit Profile', style: TextStyle(color: Colors.white, fontSize: 14)),)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15,left: 5),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),),
                    child: Icon(Icons.person_add, color: Colors.white,size: 18,),
                  )
                ],
              ),
              Row(
                children: [
                  Container(margin: EdgeInsets.only(top: 15, left: 15),
                      child: Text('Story Highlights', style: TextStyle(color: Colors.white, fontSize: 18)))
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 0.5),
                      color: Colors.black,
                    ),
                    child: Icon(Icons.add, color: Colors.white,),
                  ),
                  Highlights(),
                  Highlights(),
                  Highlights(),
                ],
              ),
              Divider(
                color: Colors.grey,thickness: 0.8,height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0.2,right: 0.2),
                   padding: EdgeInsets.zero,
                   child: IconButton(
                     padding: EdgeInsets.all(1),
                     iconSize: 125.5,
                     onPressed: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                     },
                     icon: Image(
                       width: 125.5,height: 125.5,
                       image: AssetImage('Assets/download (3).jpg'),
                       fit: BoxFit.fill,
                     ),
                   ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0.2,right: 0.2),
                    child: IconButton(
                      padding: EdgeInsets.all(1),
                      iconSize: 125.5,
                      onPressed: (){
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                      },
                      icon: Image(
                        width: 125.5,height: 125.5,
                        image: AssetImage('Assets/download (4).jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0.2,right: 0.2),
                    child: IconButton(
                      padding: EdgeInsets.all(1),
                      iconSize: 125.5,
                      onPressed: (){
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                      },
                      icon: Image(
                        width: 125.5,height: 125.5,
                        image: AssetImage('Assets/download (13).jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0.2,right: 0.2),
                    padding: EdgeInsets.zero,
                    child: IconButton(
                      padding: EdgeInsets.all(1),
                      iconSize: 125.5,
                      onPressed: (){
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                      },
                      icon: Image(
                        width: 125.5,height: 125.5,
                        image: AssetImage('Assets/download (8).jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0.2,right: 0.2),
                    child: IconButton(
                      padding: EdgeInsets.all(1),
                      iconSize: 125.5,
                      onPressed: (){
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                      },
                      icon: Image(
                        width: 125.5,height: 125.5,
                        image: AssetImage('Assets/download (7).jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),]
        ),
      ),
    );
  }
}

class Highlights extends StatelessWidget {
  const Highlights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[800],
      ),
    );
  }
}

