import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherApp extends StatefulWidget {
  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int temperature;

  var location = 'delhi';
  int woeid = 44418;
  String weather = 'clear';
  String abbreviation = '';
  String errorMessage = '';

  var searchApiUrl = 'https://www.metaweather.com/api/location/search/?query=';
  var locationApiUrl = 'https://www.metaweather.com/api/location/';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchLocation();
  }

  void fetchSearch(var input) async {
    try {
      var searchResult = await http.get(searchApiUrl + input);
      var result = json.decode(searchResult.body)[0];
      print(searchResult.body);
      setState(() {
        location = result['title'];
        woeid = result['woeid'];
        errorMessage = '';
      });
    } catch (error) {
      setState(() {
        errorMessage = 'Sorry !! We don\'t have the data';
      });
    }
  }

  void fetchLocation() async {
    var locationResult = await http.get(locationApiUrl + woeid.toString());
    var result = json.decode(locationResult.body);
    var consolatedWeather = result['consolidated_weather'];
    var data = consolatedWeather[0];
    setState(() {
      temperature = data['the_temp'].round();
      weather = data['weather_state_name']
          .toString()
          .toLowerCase()
          .replaceAll(' ', '');
      abbreviation = data['weather_state_abbr'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/$weather.png'), fit: BoxFit.cover)),
        child: temperature == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Image.network(
                            'https://www.metaweather.com/static/img/weather/png/${abbreviation}.png',
                            width: 100,
                          ),
                        ),
                        Center(
                          child: Text(
                            '${temperature.toString()} *C',
                            style: TextStyle(color: Colors.white, fontSize: 60),
                          ),
                        ),
                        Center(
                          child: Text(
                            location,
                            style: TextStyle(color: Colors.white, fontSize: 60),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300,
                          child: TextField(
                            onSubmitted: (String input) {
                              onTextFieldSubmitted(input);
                            },
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                            decoration: InputDecoration(
                                hintText: 'Search another location',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        Center(
                          child: Text(
                            errorMessage,
                            style: TextStyle(
                              color:Colors.red,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
      ),
    );
  }

  void onTextFieldSubmitted(String input) async {
    await fetchSearch(input);
    await fetchLocation();
  }
}
