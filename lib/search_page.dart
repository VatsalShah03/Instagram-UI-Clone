import 'package:flutter/material.dart';
import 'posts.dart';
import 'my_flutter_app_icons.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Expanded(
                child: TextField(
                  controller: null,
                  autofocus: false,

                  style:
                  TextStyle(fontSize: 22.0, color: const Color(0xFFbdc6cf)),
                  decoration: InputDecoration(
                    filled: true,

                    fillColor: Colors.grey[800],
                    hintText: 'Search',
                    hintStyle: const TextStyle(color: Colors.grey, fontSize: 20),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )),
          ),
        body: PostPage(),
          )
    );
  }
}

class PostPage extends StatefulWidget {
  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  int noOfLikes = 0;
  List<PostImage> images = [

    PostImage(imgPath: 'Assets/download.jpg'),
    PostImage(imgPath: 'Assets/download (1).jpg'),
    PostImage(imgPath: 'Assets/download (2).jpg'),
    PostImage(imgPath: 'Assets/download (3).jpg'),
    PostImage(imgPath: 'Assets/download (4).jpg'),
    PostImage(imgPath: 'Assets/download (5).jpg'),
    PostImage(imgPath: 'Assets/download (6).jpg'),
    PostImage(imgPath: 'Assets/download (7).jpg'),
    PostImage(imgPath: 'Assets/download (8).jpg'),
    PostImage(imgPath: 'Assets/download (9).jpg'),
    PostImage(imgPath: 'Assets/download (10).jpg'),
    PostImage(imgPath: 'Assets/download (11).jpg'),
    PostImage(imgPath: 'Assets/download (12).jpg'),
    PostImage(imgPath: 'Assets/download (12).jpg'),
    PostImage(imgPath: 'Assets/images.jpg'),
    PostImage(imgPath: 'Assets/images (1).jpg'),
    PostImage(imgPath: 'Assets/images (2).jpg'),
    PostImage(imgPath: 'Assets/images (3).jpg'),
    PostImage(imgPath: 'Assets/images (4).jpg'),
    PostImage(imgPath: 'Assets/images (5).jpg'),
    PostImage(imgPath: 'Assets/images (6).jpg'),
    PostImage(imgPath: 'Assets/images (7).jpg'),
    PostImage(imgPath: 'Assets/images (8).jpg'),
    PostImage(imgPath: 'Assets/images (9).jpg'),
    PostImage(imgPath: 'Assets/images (10).jpg'),
    PostImage(imgPath: 'Assets/images (11).jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2),
        itemBuilder: (context, index){
          return  Expanded(
            child: Container(
              child: ConstrainedBox(
                constraints: const BoxConstraints.expand(),
                child: Ink.image(
                  image: AssetImage('${images[index].imgPath}'),
                  fit: BoxFit.fill,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Scaffold(
                          appBar: AppBar(
                            backgroundColor: Colors.black,
                            title: const Text('Explore', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ),
                          body: Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  const ListTile(
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
                                        '${images[index].imgPath}',
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
                                              icon: const Icon(
                                                MyFlutterApp.heart_empty,
                                                color: Colors.white,
                                                size: 17,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(MyFlutterApp.comment, color: Colors.white, size: 20),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            const Icon(MyFlutterApp.direction_outline,
                                                color: Colors.white, size: 20),
                                            const SizedBox(
                                              width: 250,
                                            ),
                                            const Icon(Icons.bookmark_border_outlined,
                                                color: Colors.white, size: 20),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Padding(padding: EdgeInsets.only(top: 30)),
                                            Text(
                                              '$noOfLikes likes',
                                              style: const TextStyle(
                                                  color: Colors.white, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              'UserName  ',
                                              style: TextStyle(
                                                  color: Colors.white, fontWeight: FontWeight.bold),
                                            ),
                                            Expanded(
                                                child: Text(
                                                  '                          Caption',
                                                  style: TextStyle(color: Colors.white),
                                                )),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Expanded(
                                                child: Text(
                                                  '------------------------------------------------------------------',
                                                  style: TextStyle(color: Colors.white),
                                                  textAlign: TextAlign.center,
                                                )),
                                          ],
                                        ),
                                        Row(
                                          children: const [
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
                                            children: const [
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
                                            const SizedBox(
                                              height: 15,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        )),
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}

class Explore extends StatefulWidget {

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int noOfLikes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Explore', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Container(
          color: Colors.black,
          child: Column(
            children: [
              const ListTile(
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
                          icon: const Icon(
                            MyFlutterApp.heart_empty,
                            color: Colors.white,
                            size: 17,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(MyFlutterApp.comment, color: Colors.white, size: 20),
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(MyFlutterApp.direction_outline,
                            color: Colors.white, size: 20),
                        const SizedBox(
                          width: 250,
                        ),
                        const Icon(Icons.bookmark_border_outlined,
                            color: Colors.white, size: 20),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 30)),
                        Text(
                          '$noOfLikes likes',
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'UserName  ',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                            child: Text(
                              '                          Caption',
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: Text(
                              '------------------------------------------------------------------',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    Row(
                      children: const [
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
                        children: const [
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
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

