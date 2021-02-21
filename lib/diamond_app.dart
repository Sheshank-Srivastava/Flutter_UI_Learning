import 'package:flutter/material.dart';

class DiamondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade500,
        appBar: AppBar(
          title: Text(
            'Diamond App',
            style: TextStyle(fontSize: 18),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('images/diamond.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding:  EdgeInsets.only(bottom: 16,top: 8),
                      child: Column(
                        children: [
                          Icon(
                            Icons.alternate_email,
                            color: Colors.orange,
                          ),
                          SizedBox(height:5),
                          Text('If you want to buy diamonds email us'),
                          SizedBox(height:5),
                          Text('void@gmail.com')
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
