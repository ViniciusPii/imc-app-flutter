import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Imc App",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculadora de IMC",
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Icon(
              Icons.account_circle,
              color: Colors.green,
              size: 120,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Peso (kg)",
                  labelStyle: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  )),
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Altura (cm)",
                  labelStyle: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  )),
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
