 ///now

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as Http;

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Http',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Http'),
//     );
//   }
// }



// class HarryPotter {
//   static infoHarryPotter() {
//     var url = "http://hp-api.herokuapp.com/api/characters";
//     Http.get(url).then((response) {
//       print("Response status: ${response.body}");
//     });
//   }
// }


// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(

//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'RESTful API',style: TextStyle(fontSize: 28),
//             ),
//           ],
//         ),
//       )
//     );
//   }

   
// }

// class HarryPotterPullData {
//   String name;
//   String species;
//   String gender;
//   String house;
//   String image;
 
//   HarryPotterPullData({this.name, this.species, this.gender, this.house, this.image});
 
//   HarryPotterPullData.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     species = json['species'];
//     gender = json['gender'];
//     house = json['house'];
//     image = json['image'];
//   }
 
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['species'] = this.species;
//     data['gender'] = this.gender;
//     data['house'] = this.house;
//     data['image'] = this.image;
//     return data;
//   }
// }

// Future<HarryPotterPullData> fetchAlbum() async {
//   var http;
//   final response =
//       await http.get(Uri.https('jsonplaceholder.http://hp-api.herokuapp.com/api/characters', 'albums/1'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     return HarryPotterPullData.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }


// }

// class _MyAppState extends State<MyApp> {
//   Future<Album> futureAlbum;

//   @override
//   void initState() {
//     super.initState();
//     futureAlbum = fetchAlbum();
//   }



// // import 'package:flutter/material.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as Http;

// // void main() => runApp(MyApp());
 
// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Http',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //         visualDensity: VisualDensity.adaptivePlatformDensity,
// //       ),
// //       home: MyHomePage(),
// //     );
// //   }
// // }


// // class DogService {
// //   static randomDog() {
// //     var url = "http://hp-api.herokuapp.com/api/characters";
// //     Http.get(url).then((response) {
// //       print("Response status: ${response.body}");
// //     });
// //   }
// // }




// // class _MyHomePageState extends State<MyHomePage> {

// //   @override
// //   void initState() {
// //     DogService.randomDog();
// //     super.initState();
// //   }



// // // Future<ShopingPullData> fetchAlbum() async {
// // //   var http;
// // //   final response =
// // //       await http.get(Uri.https('jsonplaceholder.http://hp-api.herokuapp.com/api/characters', 'albums/1'));

// // //   if (response.statusCode == 200) {
// // //     // If the server did return a 200 OK response,
// // //     // then parse the JSON.
// // //     return ShopingPullData.fromJson(jsonDecode(response.body));
// // //   } else {
// // //     // If the server did not return a 200 OK response,
// // //     // then throw an exception.
// // //     throw Exception('Failed to load album');
// // //   }
// // // }

// // // class ShopingPullData {
// // //   String name;
// // //   String species;
// // //   String gender;
// // //   String house;
// // //   String image;
 
// // //   ShopingPullData({this.name, this.species, this.gender, this.house, this.image});
 
// // //   ShopingPullData.fromJson(Map<String, dynamic> json) {
// // //     name = json['name'];
// // //     species = json['price'];
// // //     gender = json['image'];
// // //     house = json['color'];
// // //     image = json['image'];
// // //   }
 
// // //   Map<String, dynamic> toJson() {
// // //     final Map<String, dynamic> data = new Map<String, dynamic>();
// // //     data['name'] = this.name;
// // //     data['price'] = this.price;
// // //     data['image'] = this.image;
// // //     data['color'] = this.color;
// // //     return data;
// // //   }
// // // }
 

 
// // // class MyHomePage extends StatefulWidget {
// // //   MyHomePage({Key key, this.title}) : super(key: key);
// // //   final String title;
 
// // //   @override
// // //   _MyHomePageState createState() => _MyHomePageState();
// // // }
// // // class _MyHomePageState extends State<MyHomePage> {
// // //   List data;
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //         appBar: AppBar(
// // //           title: Text('Shopping'),
// // //         ),
// // //         body: Center(
// // //           child: FutureBuilder(
// // //             future: DefaultAssetBundle.of(context)
// // //                 .loadString('assets/data.JSON'),
// // //             builder: (context, snapshot) {
// // //               if(!snapshot.hasData) {
// // //                 return CircularProgressIndicator();
// // //               }
// // //               var newData = json.decode(snapshot.data.toString());
// // //               return ListView.builder(
// // //                 itemBuilder: (BuildContext context, int index) {
// // //                   return Card(
// // //                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
// // //                     //color: Colors.newData['color']),
// // //                     child: InkWell(
// // //                       onTap: () {
// // //                         Navigator.push(
// // //                             context,
// // //                             MaterialPageRoute(
// // //                                 builder: (context) => Temp(index)
// // //                                 )
// // //                                 );
// // //                       },
// // //                       child: Padding(
// // //                         padding: const EdgeInsets.only(
// // //                             top: 32, bottom: 32, left: 16, right: 16),
// // //                         child: Row(
// // //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                           children: <Widget>[
// // //                             Column(
// // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // //                               children: <Widget>[
// // //                                 Text(
// // //                                     newData[index]['name'],
// // //                                     style: TextStyle(
// // //                                         fontWeight: FontWeight.bold,
// // //                                         fontSize: 18),
// // //                                   ),
                                
// // //                                 Text(
// // //                                   newData[index]['price'],
// // //                                   style: TextStyle(color: Colors.grey.shade600),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                             Container(
// // //                               height: 50,
// // //                               width: 50,
// // //                               child: Image.asset(newData[index]['image']),
// // //                             )
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   );
// // //                 },
// // //                 itemCount: newData == null ? 0 : newData.length,
// // //               );
// // //             },
// // //           ),
// // //         ));
// // //   }
// // // }

//  FutureBuilder<List<ProductList>>(
//     future: getProductList(),
//     builder: (context, snapshot) {
//       print("snapshot");
//       print(snapshot.data);
//       if (snapshot.hasData) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: GridView.builder(
//           itemCount: snapshot.data.length,
//             gridDelegate:SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2,),
//             itemBuilder:  (BuildContext context, int i){
//               return Card(
//                 child: Container(
//                   decoration: BoxDecoration(
//                       border: Border.all(width: 0.5,color: Colors.grey)
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: <Widget>[
//                          text18(snapshot.data[i].title, Colors.black, FontWeight.bold)
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             }
//         )
//         );
//       } else if (snapshot.hasError) {
//         return Text("${snapshot.error}");
//       }


//       // By default, show a loading spinner.
//       return CircularProgressIndicator();
//     },
//   ),