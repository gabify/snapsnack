import 'package:flutter/material.dart';
import 'package:sample/pages/choose_location.dart';
import 'package:sample/pages/loading.dart';

import 'package:sample/pages/home.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/chooseLocation' : (context) => ChooseLocation(),
  },
));