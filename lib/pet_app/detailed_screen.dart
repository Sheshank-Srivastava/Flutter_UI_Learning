import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'configuration.dart';

class DetailedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Sheshank Srivastava'),
                                      Text('Owner')
                                    ],
                                  )
                                ],
                              ),
                              Text('May 25,2019'),
                            ],
                          ),
                          Text(temp_data)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ///Bottom half layer  buttons
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),

          ///Top layer image
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                tag: 1,
                child: Image.asset(
                  'images/pet-cat2.png',
                  height: height,
                ),
              ),
            ),
          ),

          ///Center Card for animal briefing
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 125,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: listShadow,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tom',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.female,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Animal Bread',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),),
                        Text('Age in year',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),),
                      ],
                    ),
                    Row(children: [
                      Icon(
                        Icons.location_on,
                        color: primaryColor,
                      ),
                      Text('Animal Addresses')
                    ]),
                  ],
                ),
              ),
            ),
          ),

          ///Bottom layer buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 125,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                          icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Adoption',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
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
