import 'package:covid19byimindcorp/blocs/bloc_provider.dart';
import 'package:covid19byimindcorp/models/countries.dart';
import 'package:covid19byimindcorp/services/covid_api.dart';
import 'package:covid19byimindcorp/ui/list/list_country.dart';
import 'package:covid19byimindcorp/blocs/bloc_countries.dart';
import 'package:covid19byimindcorp/ui/widgets/no_data.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
CovidApi().fetchCountries();
    final height1 = MediaQuery.of(context).size.height /1.2;
final height2 = MediaQuery.of(context).size.height /17;
    final bloc= BlocProvider.of<BlocCountries>(context);
    return Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 244, 1),
        appBar: AppBar(
          title: Text('stats (Kev)'),
          backgroundColor: Color.fromRGBO(29, 36, 49, 1),
        ),
        body:Center(
          child:  Column(
            children: <Widget>[
              Container(
               height: height2,
                child: Text('A faire plus tard'),),
              Container(
                height: height1,
                width: MediaQuery.of(context).size.width/1.1,
                child: StreamBuilder<List<Countries>>(
                    stream: bloc.stream,
                    builder: (context, snap){
                      if(snap==null){
                        return NoData('Pas de données');
                      }
                      else if(!snap.hasData) {
                        return NoData('Données Vide');
                      } else{
                        return ListCountry(snap.data);
                      }
                    }
                ),
              )
            ],
          ),
        ));

  }
}

 /*Column(
          children: <Widget>[
            Container(child: Text('A faire plus tard'),),
            Container(
              height: height1,
              width: MediaQuery.of(context).size.width/1.1,
              child: StreamBuilder<List<Countries>>(
                  stream: bloc.stream,
                  builder: (context, snap){
                    if(snap==null){
                      return NoData('Pas de données');
                    }
                    else if(!snap.hasData) {
                      return NoData('Données Vide');
                    } else{
                      return ListCountry(snap.data);
                    }
                  }
              ),
            )
          ],
        ), */