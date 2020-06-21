import 'dart:convert';
All welcomeFromJson(String str) => All.fromJson(json.decode(str));

String welcomeToJson(All data) => json.encode(data.toJson());

class All {
  All({
    this.global,
    this.date,
  });

  Global global;
  DateTime date;

  factory All.fromJson(Map<String, dynamic> json) => All(
    global: Global.fromJson(json["Global"]),
    date: DateTime.parse(json["Date"]),
  );

  Map<String, dynamic> toJson() => {
    "Global": global.toJson(),
    "Date": date.toIso8601String(),
  };
}



class Global {
  Global({
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
  });

  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;

  factory Global.fromJson(Map<String, dynamic> json) => Global(
    newConfirmed: json["NewConfirmed"],
    totalConfirmed: json["TotalConfirmed"],
    newDeaths: json["NewDeaths"],
    totalDeaths: json["TotalDeaths"],
    newRecovered: json["NewRecovered"],
    totalRecovered: json["TotalRecovered"],
  );

  Map<String, dynamic> toJson() => {
    "NewConfirmed": newConfirmed,
    "TotalConfirmed": totalConfirmed,
    "NewDeaths": newDeaths,
    "TotalDeaths": totalDeaths,
    "NewRecovered": newRecovered,
    "TotalRecovered": totalRecovered,
  };
}
