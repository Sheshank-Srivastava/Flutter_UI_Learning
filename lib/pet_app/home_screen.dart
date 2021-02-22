import 'package:flutter/material.dart';
import  'configuration.dart';

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

          ///Customized AppBar
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(isdrawer ? Icons.arrow_back : Icons.menu),
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
                            color: primaryColor,
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
          ),
          /// Search Bar
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40.0,10.0,40.0,10.0  ),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: primaryColor),
                    ),
                    prefixIcon: Icon(Icons.search, color: primaryColor),
                    hintText: 'Search Pet',
                    filled: true,
                    fillColor: Colors.grey.shade200),
              ),
            ),
          ),
          Container(
            height:120,
            // padding: EdgeInsets.only(left: ),
            child: ListView.builder(

              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index){
                return Container(
                  child: Column(

                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: listShadow,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset(categories[index]['iconPath'],height: 50,width: 50,),
                      ),
                      Text(categories[index]['name'])
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
