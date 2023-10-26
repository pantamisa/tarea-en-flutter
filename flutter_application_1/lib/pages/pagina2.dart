import 'package:flutter/material.dart';

class PAG2 extends StatelessWidget {
  const PAG2({super.key});

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
      drawer: Drawer(
        child: Container(
          color: Colors.teal[300],
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(top: 50, bottom: 10),
                child: Image.network(
                    "https://icones.pro/wp-content/uploads/2021/02/icone-utilisateur.png"),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: const Text(
                  "samuel causil londoño",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ListTile(
                title: const Text('Cursos'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Notas'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Estudiantes'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.black87,
                alignment: Alignment.center,
                child: const Text(
                  "close",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Container(
          width: 40,
          height: 40,
          child: Image.asset('images/logo.png'),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text('home')],
      )),
    );
  }
}
