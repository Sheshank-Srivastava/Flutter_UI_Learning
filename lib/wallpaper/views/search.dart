import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_contact_us/wallpaper/widget/widget.dart';
import 'package:http/http.dart' as http;

import '../data/data.dart';
import '../model/wallpaper_model.dart';

class Search extends StatefulWidget {
  final String searchQuery;

  Search({this.searchQuery});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchController = new TextEditingController();
  List<WallpaperModel> wallpapers = new List();

  @override
  void initState() {
    // TODO: implement initState
    getSearchWallpaper(widget.searchQuery);
    super.initState();
    searchController.text = widget.searchQuery;
  }

  getSearchWallpaper(String query) async {
    print(searchQueryImageUrl(query)+'                  Here is the url');

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
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
                        controller: searchController,
                        decoration: InputDecoration(
                            hintText: 'search wallpapers',
                            border: InputBorder.none),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        getSearchWallpaper(searchController.text);
                      },
                      child: Container(
                        child: Icon(Icons.search),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              wallpapersList(wallpapers: wallpapers, context: context),

            ],
          ),
        ),
      ),
    );
  }
}
