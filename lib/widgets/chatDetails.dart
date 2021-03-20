import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDetail extends StatefulWidget {
  final String imgUrl;
  final String userName;
  final String msg;
  final String date;
  final bool seen;

  ChatDetail(this.imgUrl, this.userName, this.msg, this.date, this.seen);

  @override
  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  Color basicColor = Colors.grey[900];
  var containerRadius = Radius.circular(25.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basicColor,
      appBar: AppBar(
        // centerTitle: true,
        elevation: 0.0,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: widget.userName,
                style: TextStyle(
                  fontSize: 20,
                )),
            TextSpan(text: '\n'),
            TextSpan(text: 'online'),
          ]),
        ),

        backgroundColor: basicColor,
        actions: [
          IconButton(
            icon: Icon(Icons.camera),
            splashColor: Colors.green,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.call,
            ),
            splashColor: Colors.green,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_horiz,
            ),
            splashColor: Colors.green,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        alignment: Alignment.topLeft,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.80,
                          ),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[700],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            widget.msg,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0, right: 10),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(widget.imgUrl),
                        ),
                      ),
                      Text(
                        widget.date,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15.0),
                        alignment: Alignment.topRight,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.80,
                          ),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            'ok bro , i will keep going',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        alignment: Alignment.topLeft,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.80,
                          ),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[700],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            widget.msg,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0, right: 10),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(widget.imgUrl),
                        ),
                      ),
                      Text(
                        widget.date,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15.0),
                        alignment: Alignment.topRight,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.80,
                          ),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            widget.msg,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[700],
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            height: 50,
            child: Row(
              children: [
                 IconButton(
                  icon: Icon(Icons.attach_file_rounded),
                  onPressed: () {},
                  iconSize: 25,
                  color: Colors.green,
                ),
                
                Expanded(
                  
                  child: TextField(
                    decoration:
                        InputDecoration.collapsed(hintText: 'Send a Message...'),
                        
                        
                  ),
                ),
                 IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                  iconSize: 25,
                  color: Colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
