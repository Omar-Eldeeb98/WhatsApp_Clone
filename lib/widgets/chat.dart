import 'package:flutter/material.dart';

Widget chatTile(String imgUrl, String userName, String msg, String date  , bool seen) {
  return InkWell(
    onTap: (){},
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0 , ),
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
                SizedBox(height: 5.0,),
                Row(
                  children: [
                    Expanded(child: Text(msg)),
                   if(seen) Icon(
                      Icons.check_circle,
                      size: 18.0,
                      color: Colors.green,

                    ),
                    if(!seen)
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
