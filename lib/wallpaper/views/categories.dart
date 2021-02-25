import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_contact_us/wallpaper/widget/widget.dart';

import '../data/data.dart';
import 'package:http/http.dart' as http;

import '../model/wallpaper_model.dart';

class Category extends StatefulWidget {
  final String categoryName;

  Category(this.categoryName);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<WallpaperModel> wallpapers = new List();

  getSearchWallpaper(String query) async {
    print(searchQueryImageUrl(query) + '                  Here is the url');

    var response = await http.get(
      searchQueryImageUrl(query),
      headers: {'Authorization': apiKey},
    );
    // print(response.body.toString());
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    wallpapers.clear();
    jsonData['photos'].forEach((element) {
      wallpapers.add(WallpaperModel.formMap(element));
    });

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    getSearchWallpaper(widget.categoryName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),
      body: Container(
        child: wallpapersList(
          wallpapers: wallpapers,
          context: context,
        ),
      ),
    );
  }
}
