import 'package:flutter/material.dart';
import 'package:flutter_contact_us/wallpaper/widget/widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WallpaperHub',
      theme: ThemeData(primaryColor: Colors.white),
      home: WallpaperHome(),
    );
  }
}

class WallpaperHome extends StatefulWidget {
  @override
  _WallpaperHomeState createState() => _WallpaperHomeState();
}

class _WallpaperHomeState extends State<WallpaperHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            /// Search Bar
            Container(
              decoration: BoxDecoration(
                color: Color(0xfff5f8fd),
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'search wallpapers',
                        border: InputBorder.none
                      ),
                    ),
                  ),
                  Icon(Icons.search)
                ],
              ),
            ),
            /// Personal Branding
            personalBranding()
            /// Horizontal Category list View
          ],
        ),
      ),
    );
  }
}
