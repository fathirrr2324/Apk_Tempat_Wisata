import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'model/tourism_place.dart';
// import 'login_page.dart';
import 'home_page.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
            home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/detail_screen': (context) => DetailScreen(),
      },
    );
  }
}




