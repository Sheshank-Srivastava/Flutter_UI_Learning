import 'package:flutter/material.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration:BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/clear.png'),
              fit: BoxFit.cover
            )
        )

      ),
    );
  }
}
