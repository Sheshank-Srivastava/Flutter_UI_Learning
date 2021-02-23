import 'package:flutter/material.dart';

class WeatherApp extends StatefulWidget {
  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int temperature = 0;
  var location = 'India';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/clear.png'), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Center(
                      child: Text(
                        '${temperature.toString()} *C',
                        style: TextStyle(color: Colors.white, fontSize: 60),
                      ),
                    ),
                    Center(
                      child: Text(
                        location,
                        style: TextStyle(color: Colors.white, fontSize: 60),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                        decoration: InputDecoration(
                            hintText: 'Search another location',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            )),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
