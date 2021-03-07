import 'package:flutter/material.dart';

Widget story(String imgUrl, String userName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
          radius: 25.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          userName,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}
