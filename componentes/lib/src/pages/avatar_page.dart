import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://dam.esquirelat.com/wp-content/uploads/2020/07/STANLEE.jpg'),
              radius: 30.0,
            ),
            padding: EdgeInsets.all(2.0),
          ),
          Container(
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
            margin: EdgeInsets.only(right: 10.0),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://dam.smashmexico.com.mx/wp-content/uploads/2017/08/12220644/marvel-mensaje-stan-lee-contra-odio-carta-cover.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
