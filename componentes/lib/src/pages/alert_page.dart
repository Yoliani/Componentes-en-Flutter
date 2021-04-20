import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        /*           RaisedButton ya no se debe usar                */
        //child: RaisedButton(
        //child: Text('Mostrar Alterta'),
        //color: Color.blue
        //textColor: Color.white
        //shape: shapeStadiumBorder()
        //onPressed: () {},
        //),
        child: ElevatedButton(
          child: Text('Mostrar Alterta'),
          onPressed: () => _mostrarAlerta(context),
          style: ElevatedButton.styleFrom(
              primary: Colors.red, shape: StadiumBorder()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.eco),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la caja de alerta'),
              FlutterLogo(
                size: 100.0,
              ),
            ],
          ),
          actions: [
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text('Cancelar'),
            //   style: ElevatedButton.styleFrom(),
            // ),
            // ElevatedButton(onPressed: () {}, child: Text('Ok')),

            FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancelar')),
            FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Ok')),
          ],
        );
      },
    );
  }
}
