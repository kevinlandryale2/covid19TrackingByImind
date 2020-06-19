import 'package:covid19byimindcorp/models/countries.dart';
import 'package:covid19byimindcorp/ui/tile/tile_countries.dart';
import 'package:flutter/material.dart';

class ListCountry extends StatelessWidget{
  final List<Countries> countries;
  ListCountry(this.countries);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      //scrollDirection: Axis.vertical,
     itemCount: countries.length,
        itemBuilder: (ctx, i)=>TileCountries(countries[i])
    );
  }
}