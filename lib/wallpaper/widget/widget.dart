import 'package:flutter/material.dart';
import 'package:flutter_contact_us/wallpaper/model/wallpaper_model.dart';

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

Widget wallpapersList({List<WallpaperModel> wallpapers, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      physics: ClampingScrollPhysics(),
      children: wallpapers.map((wallpaper) {
        return GridTile(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
                child:
                    Image.network(wallpaper.src.portrait, fit: BoxFit.cover)),
          ),
        );
      }).toList(),
    ),
  );
}
