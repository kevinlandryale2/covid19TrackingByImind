import 'dart:async';
import 'package:covid19byimindcorp/blocs/bloc.dart';
import 'package:covid19byimindcorp/models/global.dart';

class BlocGlobalCovid extends Bloc{
  final _streamController= StreamController<List<Global>>();
  Stream <List<Global>> get stream => _streamController.stream;
  Sink <List<Global>> get sink => _streamController.sink;
  fectchGgobalData() async{
    //final covidworlds= await CovidApi().fectchGgobalData();
   // sink.add(covidworlds);
  }
  @override
  dispose() => _streamController.close();
}