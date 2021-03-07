import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Future<HarryPotterPullData> fetchAlbum() async {
  final response =
      await http.get(Uri.http("hp-api.herokuapp.com", "/api/characters",));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return HarryPotterPullData.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}



class HarryPotterPullData {
  final String name;
  final String species;
  final String gender;
  final String house;
  final List<Image> image;

 
  HarryPotterPullData({this.name, this.species, this.gender, this.house, this.image});
  factory HarryPotterPullData.fromJson(Map<String, dynamic> parsedJson) {
   
    var list = parsedJson['image'] as List;
    print(list.runtimeType); //returns List<dynamic>
    List<Image> imagesList = list.map((i) => Image.fromJson(i)).toList();

   
    return HarryPotterPullData(
    name: parsedJson['name'],
    species:  parsedJson['species'],
    gender: parsedJson['gender'],
    house: parsedJson['house'],
    image: imagesList

    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['species'] = this.species;
    data['gender'] = this.gender;
    data['house'] = this.house;
    data['image'] = this.image;
    return data;
  }



}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<HarryPotterPullData> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<HarryPotterPullData>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.name);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
