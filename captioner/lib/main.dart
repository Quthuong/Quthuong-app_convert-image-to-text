import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway',
      ),
      home: Home(),
      body: Center(
        child: Image.asset('assets/owl.jpg'), // Đường dẫn tới tệp ảnh trong thư mục assets
      ),
      debugShowCheckedModeBanner: false,
    );
  }

}