import 'package:flutter/material.dart';

class MyAppBar extends AppBar{
final String titleString;
MyAppBar({@required this.titleString}): super(
title:Text(titleString, style: TextStyle(fontFamily: 'Ghotics', fontSize:40,fontWeight: FontWeight.bold ),),
backgroundColor:Color.fromRGBO(29, 36, 49, 1),
elevation:0.0,
centerTitle: true,
);
}