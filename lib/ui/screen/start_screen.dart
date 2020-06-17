import 'package:covid19byimindcorp/ui/widgets/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color baseColor = Color.fromRGBO(29, 36, 49, 1);
    int valeurConf = 3592256;

    // TODO: implement build
    return Scaffold(
      appBar: MyAppBar(
        titleString: "Covid-19",
      ),
      body: Center(
          child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                color: Color.fromRGBO(29, 36, 49, 1),
                height: MediaQuery.of(context).size.height / 20,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text('By imind Corp',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Ghotics',
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      Text('Kev Mack',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Ghotics',
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Container(
                //child: Image(image: AssetImage("images/covid1.jpg")),
                height: MediaQuery.of(context).size.height / 5,
                decoration: new BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("images/covid1.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: new BorderRadius.only(
                      bottomRight: const Radius.circular(12.0),
                      bottomLeft: const Radius.circular(12.0),
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 17,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Mondial",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Ghotics',
                                  fontSize: 23),
                            ),
                            Container(
                                height: MediaQuery.of(context).size.height / 18,
                                width: 127,
                                decoration: new BoxDecoration(
                                  color: Color.fromRGBO(29, 36, 49, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(11.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Regional",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Ghotics',
                                            fontSize: 18),
                                      ),
                                      Icon(Icons.arrow_forward_ios,
                                          size: 20, color: Colors.white)
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      // WorrdInfos
                      Container(
                          height: MediaQuery.of(context).size.height / 3.5,
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    //Confirmé
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                      width: MediaQuery.of(context).size.width /
                                          2.4,
                                      decoration: new BoxDecoration(
                                        color: baseColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Center(
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                "Confirmé:",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: 'Ghotics',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                valeurConf.toString(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: 'Ghotics',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    //Cas Actifs
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                      width: MediaQuery.of(context).size.width /
                                          2.4,
                                      decoration: new BoxDecoration(
                                        color: baseColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Center(
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                "Cas actifs:",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: 'Ghotics',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                2209250.toString(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: 'Ghotics',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    //Récupérations
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /9,
                                      width: MediaQuery.of(context).size.width /2.4,
                                      decoration: new BoxDecoration(
                                        color: baseColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Center(
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                "Récupérations:",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: 'Ghotics',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                1015098.toString(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: 'Ghotics',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    //Mort
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                      width: MediaQuery.of(context).size.width /
                                          2.4,
                                      decoration: new BoxDecoration(
                                        color: Color.fromRGBO(187, 7, 36, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Center(
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                "Décès:",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: 'Ghotics',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                249454.toString(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: 'Ghotics',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              //Les Symptoms
              Padding(
                padding: EdgeInsets.only(left: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Symthomes",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Ghotics',
                          fontSize: 23),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(1.2),
                child: Container(
                  height: MediaQuery.of(context).size.height / 4.22,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 2.4,
                        decoration: new BoxDecoration(
                          color: baseColor,
                          image: DecorationImage(
                            image: AssetImage("images/infos.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child:Center(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top:50),
                                child: Text("Les symthomes",textAlign: TextAlign.center, style: TextStyle(color :Colors.white ,fontWeight: FontWeight.bold, fontFamily: 'Ghotics', fontSize: 30),
                              )
                              

                              ),
                            ],
                          ),
                        ) ,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.4,
                        decoration: new BoxDecoration(
                          color: baseColor,
                          image: DecorationImage(
                            image: AssetImage("images/infos.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child:Center(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(top:50),
                                  child: Text("Les informations",textAlign: TextAlign.center, style: TextStyle(color :Colors.white ,fontWeight: FontWeight.bold, fontFamily: 'Ghotics', fontSize: 30),
                                  )


                              ),
                            ],
                          ),
                        ) ,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.4,
                        decoration: new BoxDecoration(
                          color: baseColor,
                          image: DecorationImage(
                            image: AssetImage("images/infos.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child:Center(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(top:50),
                                  child: Text("Les mesures Barierres",textAlign: TextAlign.center, style: TextStyle(color :Colors.white ,fontWeight: FontWeight.bold, fontFamily: 'Ghotics', fontSize: 30),
                                  )


                              ),
                            ],
                          ),
                        ) ,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
