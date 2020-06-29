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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Icon(
                Icons.account_circle,
                color: Colors.green,
                size: 100,
              ),
            ),
            TextField(
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
            Padding(
              padding: EdgeInsets.only(top: 10),
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
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                height: 50,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.green,
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
