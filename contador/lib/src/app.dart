import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'pages/contador_page.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: ContadorPage(),
        ));
  }
}
