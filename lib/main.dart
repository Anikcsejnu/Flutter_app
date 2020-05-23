import 'package:flutter/material.dart';
import 'package:forecast/pages/choose_location.dart';
import 'package:forecast/pages/home.dart';
import 'package:forecast/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),

  },
));
