import 'package:covid19byimindcorp/models/countries.dart';
import 'package:http/http.dart' as http;
  import 'dart:convert' show json;
   class CovidApi {
    // String _globalInfo() => _baseUrl + "current.  //   final _baseUrl = "  https://covidtracking.com/api/v1/us/";json";
     final _baseUrl2 = "https://corona.lmao.ninja/v2/";
     String _allCountries()=> _baseUrl2+"countries";

     Future <List<dynamic>> request(String urlStrring) async {
       final result = await http.get(urlStrring);
       final body = json.decode(result.body);
       return body;
     }
     
     Future<List<Countries>> fectchCountriesData() async{
       final List<dynamic> list= await request(_allCountries());
       return list.map((json)=>Countries.fromJson(json)).toList();
     }


     fetchCountries()async{
       final List<dynamic> list= await request(_allCountries());
       list.forEach((f){
         print("liste: $f");
       });
     }

   }
