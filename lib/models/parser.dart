import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart';
import 'dart:async';
class Parser{
  final String rss_Url="https://www.sciencesetavenir.fr/tag_maladie/coronavirus_10130/rss.xml";


  Future chargerRss() async{
    final reponse = await get(rss_Url);
    if(reponse.statusCode==200){
      final feed= RssFeed.parse(reponse.body);
      return feed;
    }else{
      print("erreur ${reponse.statusCode}");
    }
  }
}