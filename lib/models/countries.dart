class Countries {
  int misAjour;
  String country;
  CountryInfo countryInfo;
  int cas;
  int casDuJour;
  int mort;
  int morDuJour;
  int retabli;
  int actif;
  int population;
  int retabliDuJour;
  int critique;
  int test;
  String continent;
  Countries({this.countryInfo,this.test,this.country, this.misAjour, this.actif,this.mort,this.cas, this.casDuJour,this.critique,this.continent,this.morDuJour,this.retabli,this.population,this.retabliDuJour});

  factory Countries.fromJson(Map<String, dynamic> json) => Countries(
    misAjour: json["updated"],
    country: json["country"],
    countryInfo: CountryInfo.fromJson(json["countryInfo"]),
    cas: json["cases"],
    casDuJour: json["todayCases"],
    mort: json["deaths"],
    morDuJour: json["todayDeaths"],
    retabli: json["recovered"],
    retabliDuJour: json["todayRecovered"],
    actif: json["active"],
    critique: json["critical"],
    test: json["tests"],
    continent: json["continent"],
    population: json["population"] == null ? null : json["population"],
  );
}
class CountryInfo{
  CountryInfo({
    this.flag,
  });

  String flag;

  factory CountryInfo.fromJson(Map<String, dynamic> json) => CountryInfo(
    flag: json["flag"],
  );
}