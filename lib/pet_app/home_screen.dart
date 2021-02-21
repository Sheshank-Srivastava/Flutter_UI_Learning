import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scaleFactor = 1;
  bool isdrawer = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scaleFactor),
      duration: Duration(
        milliseconds: 250,
      ),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 45),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    setState(() {
                      xoffset = isdrawer ? 0 : 230;
                      yoffset = isdrawer ? 0 : 150;
                      scaleFactor = isdrawer ? 1 : 0.6;

                      isdrawer = !isdrawer;
                    });
                  },
                ),
                Column(
                  children: [
                    Text('Location'),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.green,
                          ),
                          onPressed: () {},
                        ),
                        Text('India'),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
