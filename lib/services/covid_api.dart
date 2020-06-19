import 'package:covid19byimindcorp/models/countries.dart';
import 'package:http/http.dart' as http;
  import 'dart:convert' show json;
   class CovidApi {
  //   final _baseUrl = "https://covidtracking.com/api/v1/us/";
    // String _globalInfo() => _baseUrl + "current.json";
     final _baseUrl2 = "https://corona.lmao.ninja/v2/";
     String _allCountries()=> _baseUrl2+"countries";

     Future <List<dynamic>> request(String urlStrring) async {
       final result = await http.get(urlStrring);
       final body = json.decode(result.body);
       return body;
     }
     fetchCountries()async{
       final List<dynamic> list= await request(_allCountries());
       list.forEach((f){
         print("liste: $f");
       });
     }

     Future<List<Countries>> fectchCountriesData() async{
       final List<dynamic> list= await request(_allCountries());
       return list.map((json)=>Countries.fromJson(json)).toList();
     }




   }
/* fectchGgobalData() async{
       final List<dynamic> list= await request(_globalInfo());
       list.forEach((f) {
         print("Liste : $f");
       });
     }*/