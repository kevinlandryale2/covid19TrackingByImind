import 'package:covid19byimindcorp/services/covid_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    CovidApi().fectchCountriesData();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
              title: Text('Covid Test'),
        backgroundColor: Colors.yellow,
        
      ),
      body: (Text('Salut Simo')),
    );
  }
}