import 'package:flutter/material.dart';
import './widgets/chat.dart';
import './widgets/story.dart';

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
// ...................
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
                  story(imgUrl[0], 'Omar '),
                  story(imgUrl[1], 'yoyo '),
                  story(imgUrl[2], 'ahmed '),
                  story(imgUrl[3], 'Nona '),
                  story(imgUrl[4], 'summer '),
                  story(imgUrl[5], 'mony '),
                  story(imgUrl[6], 'angeila '),
                  story(imgUrl[7], '7odaa '),
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
                    ChatTile(imgUrl[0], 'Omar', 'hey! i checked your code , it is fucken good , keep going ...', 'ysterday', false),
                    ChatTile(imgUrl[1], 'yoyo', 'i will be there', '5/5/2021', true),
                    ChatTile(imgUrl[2], 'ahmed', 'ok bro...', '7/2/2021', false),
                    ChatTile(imgUrl[3], 'nona', 'meet me at night', '10/2/2021', true),
                    ChatTile(imgUrl[4], 'summer ', 'love u', '20/2/2021', false),
                    ChatTile(imgUrl[5], 'mony', 'send package', '15/7/2021', true),
                    ChatTile(imgUrl[6], 'angeila', 'on time pls', '17/8/2021', false),
                    ChatTile(imgUrl[7], '7odaa', 'fuck off', '8/2/2021', true),
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
