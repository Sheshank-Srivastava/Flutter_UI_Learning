import 'package:flutter/material.dart';
import 'package:flutter_contact_us/pet_app/configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50,left:10),
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sheshank- Name',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Active Status',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: drawerItem
                .map((e) => Row(
                      children: <Widget>[
                        Icon(
                          e['icon'],
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          e['title'],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        )
                      ],
                    ))
                .toList(),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.settings),
                color: Colors.white,
              ),
              Text(
                'Setting',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 1,
                height: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Log out',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
