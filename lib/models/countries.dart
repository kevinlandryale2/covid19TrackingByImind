class Countries {
int misAjour;
String country;
String drapeau;
int cas;
int casDuJour;
int mort;
int morDuJour;
int retabli;
int actif;
int critique;
String continent;
Countries.fromJson(Map json):
      misAjour= json["updated"],
      country= json["country"],
      drapeau= json["flag"],
      cas= json["cases"],
      casDuJour= json["todayCases"],
      mort= json["deaths"],
      morDuJour= json["todayDeaths"],
      retabli= json["recovered"],
      actif= json["active"],
      critique= json["critical"],
      continent= json["continent"];
}