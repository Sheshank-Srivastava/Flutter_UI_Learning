import 'dart:core';

import 'package:flutter_contact_us/wallpaper/model/categories_model.dart';

String apiKey = '563492ad6f917000010000017b86ec3d37314634beef09bb23237a31';
String mostTrendingImageUrl =
    'https://api.pexels.com/v1/curated?per_page=15&page=1';
// String searchQueryImageUrl ='https://api.pexels.com/v1/search?query=&per_page=15&page=1';

var searchQueryImageUrl = (String query) =>
    'https://api.pexels.com/v1/search?query=$query&per_page=15&page=1';

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = new List();

  categories.add(CategoriesModel('Street Art',
      'https://images.pexels.com/photos/545008/pexels-photo-545008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'));

  categories.add(CategoriesModel('Wild Life',
      'https://images.pexels.com/photos/704320/pexels-photo-704320.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'));

  categories.add(CategoriesModel('Nature',
      'https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500'));

  categories.add(CategoriesModel('City',
      'https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'));

  categories.add(CategoriesModel('Motivation',
      'https://images.pexels.com/photos/1434819/pexels-photo-1434819.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'));

  categories.add(CategoriesModel('Bikes',
      'https://images.pexels.com/photos/2116475/pexels-photo-2116475.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'));

  categories.add(CategoriesModel('Cars',
      'https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'));
  return categories;
}
