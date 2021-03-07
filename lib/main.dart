import 'package:flutter/material.dart';
import 'package:whatsapa_clone/widgets/chat.dart';
import 'package:whatsapa_clone/widgets/story.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      home: WhatsAppClone(),
    );
  }
}

class WhatsAppClone extends StatefulWidget {
  @override
  _WhatsAppCloneState createState() => _WhatsAppCloneState();
}

class _WhatsAppCloneState extends State<WhatsAppClone> {
// the main color of the app
  Color basicColor = Colors.grey[900];
  var containerRadius = Radius.circular(25.0);
// ....... list of image url to represent  avatar pic
  List<String> imgUrl = [
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/women/80.jpg",
    "https://randomuser.me/api/portraits/men/43.jpg",
    "https://randomuser.me/api/portraits/women/49.jpg",
    "https://randomuser.me/api/portraits/women/45.jpg",
    "https://randomuser.me/api/portraits/women/0.jpg",
    "https://randomuser.me/api/portraits/women/1.jpg",
    "https://randomuser.me/api/portraits/men/0.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basicColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'WhatsApp Clone',
          style: TextStyle(fontSize: 22.0 ,  ),
        ),
        backgroundColor: basicColor,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          ),
        
        ],
      ),
      body: Column(
        children: [
          //  story timeline container
          Container(
           
            height: 100.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // custome widget is here
                  story(imgUrl[0], 'Omar Eld'),
                  story(imgUrl[1], 'michel Eld'),
                  story(imgUrl[2], 'mark Eld'),
                  story(imgUrl[3], 'soso Eld'),
                  story(imgUrl[4], 'momo Eld'),
                  story(imgUrl[5], 'nono Eld'),
                  story(imgUrl[6], 'spider Eld'),
                  story(imgUrl[7], 'joue Eld'),
                ],
              ),
            ),
          ),
          // chat timeline ......................
          Expanded(
            child: Container(
               decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: containerRadius,
                topRight: containerRadius,
              ),
              color: Colors.white,
            ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 10 , right: 10 , top: 10),
                child: ListView(
                  children: [
                    chatTile(imgUrl[0], 'userName', 'hey!', 'ysterday', false),
                    chatTile(imgUrl[1], 'userName', 'i will be there', '5/5/2021', true),
                    chatTile(imgUrl[2], 'userName', 'ok bro...', '7/2/2021', false),
                    chatTile(imgUrl[3], 'userName', 'meet me at night', '10/2/2021', true),
                    chatTile(imgUrl[4], 'userName', 'love u', '20/2/2021', false),
                    chatTile(imgUrl[5], 'userName', 'send package', '15/7/2021', true),
                    chatTile(imgUrl[6], 'userName', 'on time pls', '17/8/2021', false),
                    chatTile(imgUrl[7], 'userName', 'fuck off', '8/2/2021', true),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
