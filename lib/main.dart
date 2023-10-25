import 'package:flutter/material.dart';
import 'package:flutter_class16/provider/provider.dart';
import 'package:flutter_class16/view/screens/homescreen.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(create: (context) => MyPro(),
      child: HomePage(),
      ),
    );
  }
}