import 'package:flutter/material.dart';
import 'package:http_provider/provider/categoryprovider.dart';
import 'package:provider/provider.dart';

import 'home.dart';


void main() {
  runApp(


    //providers
    MultiProvider(
      providers: [

        //theme provider
        ChangeNotifierProvider(
          create:(_) => CategoryProvider(),
        ),

      ],
      child: const MyApp(),
    ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api and Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const Home(),
    );
  }
}


