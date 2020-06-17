import 'package:covid19byimindcorp/models/countries.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TileCountries extends StatelessWidget {
  final Countries countrie;

  TileCountries(this.countrie);

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      margin: EdgeInsets.only(top: 20,),
        color: Colors.white,
      child: Container(

        height: 130,
margin: EdgeInsets.all(23),
        child:Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Row(
              children: <Widget>[
                //Text("Pays: "+countrie.country),
                //Image.network(countrie.drapeau, width: MediaQuery.of(context).size.width/8,height: MediaQuery.of(context).size.height/8,)
               Container(
                  height: 80,
                   width: MediaQuery.of(context).size.width/8,
                  color: Color.fromRGBO(29, 36, 49, 1),
                  child:Text('Drapeau du '+countrie.country, style: TextStyle(color: Colors.white),),
                  //new Image.network(countrie.drapeau,)
                 //
                ),
              ],
            ),
           Padding(
               padding: EdgeInsets.all(6.0),
             child:Column(
               children: <Widget>[


                 Text("Cas Totale: "+countrie.cas.toString(),style: TextStyle(fontSize: 21),),
                 Text("Actifs: "+countrie.actif.toString(),style: TextStyle(fontSize: 21),),
                 Text("Décédés: "+countrie.mort.toString(),style: TextStyle(fontSize: 21),),
                 Text("Récupérations: "+countrie.retabli.toString(),style: TextStyle(fontSize: 21),),
               ],
             )

           )
          ],
        )

      ),
      );




  }

}