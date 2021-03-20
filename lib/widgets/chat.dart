
import 'package:flutter/material.dart';
import 'chatDetails.dart';

class ChatTile  extends StatelessWidget {

  final String imgUrl;
  final String userName;
  final String msg;
  final String date;
   final bool seen;


   ChatTile(this.imgUrl , this.userName , this.msg , this.date , this.seen);
  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: ( BuildContext context)=> ChatDetail( imgUrl , userName , msg , date , seen)   ));
    },
    
    child: Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 27.0,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        userName,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    Text(date),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(child: Text(msg)),
                    if (seen)
                      Icon(
                        Icons.check_circle,
                        size: 18.0,
                        color: Colors.green,
                      ),
                    if (!seen)
                      Icon(
                        Icons.check_circle_outline,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
      
   
  }
}

