import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontFamily: 'Arial', fontSize: 25);
  int _conteo = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contador'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número de taps:',
                style: _estiloTexto,
              ),
              Text(
                '$_conteo',
                style: _estiloTexto,
              ),
            ],
          ),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        //Espacio
        SizedBox(
          width: 30.0,
        ),

        //Boton de reiniciar
        FloatingActionButton(
            onPressed: () {
              _reset();
            },
            child: Icon(Icons.exposure_zero)),

        //Alejar los botones
        Expanded(child: SizedBox(width: 5.0)),

        //Boton de quitar un tap
        FloatingActionButton(
          onPressed: () {
            _sustraer();
          },
          child: Icon(Icons.remove),
        ),

        //Aleja los Botones
        Expanded(child: SizedBox(width: 5.0)),

        //Boton de agregar tap
        FloatingActionButton(
            onPressed: () {
              _agregar();
            },
            child: Icon(Icons.add)),
      ],
    );
  }

  void _agregar() {
    setState(() {
      _conteo++;
    });
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
