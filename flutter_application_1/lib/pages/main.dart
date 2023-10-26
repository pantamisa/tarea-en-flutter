import 'package:flutter/material.dart';
import 'pagina2.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  MiApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'home',
          ),
          ElevatedButton(
            child: Text("ingresar"),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PAG2(),
                ),
              ),
            },
          )
        ],
      )),
    );
  }
}
