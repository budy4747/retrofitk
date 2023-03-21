import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/src/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:retrofitk/Homepage.dart';
import 'package:retrofitk/Reposetry/repo.dart';
import 'package:retrofitk/client/ApiClient.dart';
import 'package:retrofitk/data/LoginCubit/login_cubit.dart';
import 'package:retrofitk/model/User.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrofitk/url.dart';

// Future<Post> createAlbum(String mobile, String app) async {
//   final http.Response response = await http.post(
//     Uri.parse('http://testschool.paperbirdtech.com/api/School/otp_verification.php'),
//
//     body: <String, String>{
//       'mobile': mobile,
//       'app' : app
//     },
//   );
//
//   if (response.statusCode == 200) {
//     // If the server did return a 201 CREATED response,
//     // then parse the JSON.
//     print(response.body.toString());
//     return Post.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 201 CREATED response,
//     // then throw an exception.
//     throw Exception('Failed to create album.');
//   }
// }


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Create Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Create Data Example'),
//         ),
//         body: Container(
//           alignment: Alignment.center,
//           padding: const EdgeInsets.all(8.0),
//           child: Column(children: [
//             ElevatedButton(onPressed: (){
//                _buildBody();
//             }, child: Text("press")),
//           ],)
//         ),
//       ),
//     );
//   }
//
//   // Column buildColumn() {
//   //   return Column(
//   //     mainAxisAlignment: MainAxisAlignment.center,
//   //     children: <Widget>[
//   //
//   //       ElevatedButton(
//   //         onPressed: () {
//   //           setState(() {
//   //          // _buidBody(BuildContext, context);
//   //           });
//   //         },
//   //         child: const Text('Create Data'),
//   //       ),
//   //     ],
//   //   );
//   // }
//   //
//   // FutureBuilder<Post> buildFutureBuilder() {
//   //   return FutureBuilder<Post>(
//   //     future: _futureAlbum,
//   //     builder: (context, snapshot) {
//   //       if (snapshot.hasData) {
//   //         return Text(snapshot.data!.email);
//   //       } else if (snapshot.hasError) {
//   //         return Text('${snapshot.error}');
//   //       }
//   //
//   //       return const CircularProgressIndicator();
//   //     },
//   //   );
//   // }
//
// // FutureBuilder<Post> _buidBody(BuildContext , context){
// //     return FutureBuilder<Post>(
// //       future: client.noVerify('9924226515', 'school'),
// //     builder: (context ,snapshot){
// //   if (snapshot.hasData) {
// //            print(snapshot.data!.name);
// //           return Text(snapshot.data!.email);
// //         } else if (snapshot.hasError) {
// //           return Text('${snapshot.error}');
// //         }
// //
// //         return const CircularProgressIndicator();
// //       },
// //     );
//
//
//   FutureBuilder<Post> _buildBody() {
//     final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
//     try {
//       return FutureBuilder<Post>(
//         future: client.noVerify('9924226515', 'school'),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             final Post? posts = snapshot.data;
//             return Text(snapshot.data!.email);
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       );
//     }catch(e){
//       print(e);
//     }
//
//   }
  bool pressed = false;


  @override
  void initState() {
    super.initState();
  }

  // Reposetry? reposetry;
  // Dio _dio = new Dio();
  // var client = ApiClient(Dio(
  //   BaseOptions(contentType: 'multipart/form-data'),),);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainHomePage(),

      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Retrofit Post Call"),
      //   ),
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //     FutureBuilder<Post>(
      //     future: client.noVerify('9924226515','school'),
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.done) {
      //         print("if");
      //         return Text(snapshot.data!.name);
      //       } else {
      //         return Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       }
      //     },              // FutureBuilder<Post?>(
      //         //   future: client.noVerify('9924226515', 'school'),
      //         //   builder: (context, snapshot) {
      //         //     if (snapshot.connectionState == ConnectionState.done) {
      //         //       final Post? posts = snapshot.data;
      //         //       print(posts!.name);
      //         //       return Text(posts.email);
      //         //     } else {
      //         //       return Center(
      //         //         child: CircularProgressIndicator(),
      //         //       );
      //         //     }
      //         //   },
      //         // ),
      //     )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }


// FutureBuilder<Post> _buildBody(BuildContext context) {
//   print("press");
//   return
//   );
// }
// Future<Post?> _future() async {
//     Dio? dio;
//   try  {
//     var param = client.noVerify("1234567890",'school');
//    var  response = await dio?.post(url, data: para, );
// print(response);
//     // await client.noVerify("1234567890",'school')///
//     print('Login successful!');
//   } catch (e) {
//     print('Error logging in: $e');
//   }
// }


}


// final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));


// Widget _buildPosts(BuildContext context, Post posts) {
//   return Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//
//         Text("Name : "+posts.name,style: TextStyle(fontSize: 30),),
//         Text("Age : "+posts.email.toString(),style: TextStyle(fontSize: 30),),
//       ],
//     ),
//   );
//

class MainHomePage extends StatelessWidget {
  final  client = ApiClient(Dio(BaseOptions()), baseUrl: baseUrl);
  Repository? repository;
  MainHomePage({Key? key}) : super(key: key);
   @override

  Widget build(BuildContext context) {
     repository = Repository(apiClient: client);
    return Scaffold(body: BlocProvider(
      create: (context) => LoginCubit(reposetry: repository),
      child: HomePage(),
    ),);
  }
}
