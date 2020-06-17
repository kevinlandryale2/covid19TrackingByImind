import 'package:covid19byimindcorp/ui/screen/home_screen.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomeScreen(),
      //BlocProvider<BlocCountries>(bloc:BlocCountries() , child:HomeScreen() ,),
    );
  }
}