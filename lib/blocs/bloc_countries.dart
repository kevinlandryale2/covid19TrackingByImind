import 'dart:async';

import 'package:covid19byimindcorp/blocs/bloc.dart';
import 'package:covid19byimindcorp/models/countries.dart';
import 'package:covid19byimindcorp/services/covid_api.dart';

class BlocCountries extends Bloc{
  final _streamController= StreamController<List<Countries>>();
  Stream <List<Countries>> get stream => _streamController.stream;
  Sink <List<Countries>> get sink => _streamController.sink;
  fectchCountriesData() async{
    final covidCountries= await CovidApi().fectchCountriesData();
    sink.add(covidCountries);
  }
  BlocCountries(){
    fectchCountriesData();
  }
  @override
  dispose() => _streamController.close();
}