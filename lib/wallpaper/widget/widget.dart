import 'package:flutter/material.dart';

Widget brandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Wallpaper',
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      ),
      Text(
        'Hub',
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget personalBranding() {
  return Container(
    margin: EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Made by ',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Sheshank Srivastava',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}
