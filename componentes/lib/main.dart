//import 'package:componentes/src/pages/home_temp.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:flutter/material.dart';

import 'src/pages/alert_page.dart';
import 'src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes APP',
      //home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext) => HomePage(),
        'alert': (BuildContext) => AlertPage(),
        'avatar': (BuildContext) => AvatarPage(),
      },
    );
  }
}
