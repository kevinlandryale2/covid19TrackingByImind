import 'package:covid19byimindcorp/models/countries.dart';
import 'package:covid19byimindcorp/ui/widgets/app_bar.dart';
import 'package:covid19byimindcorp/ui/widgets/no_data.dart';
import 'package:flutter/material.dart';

class DetailCountries extends StatelessWidget{
  final Countries countries;
  DetailCountries(this.countries);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(titleString: countries.country,),
      body: NoData(countries.country),
    );

  }
}