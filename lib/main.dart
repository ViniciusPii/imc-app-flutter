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
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  String _result = "Informe seus Dados!";

  void _resetFields() {
    setState(() {
      weightController.text = "";
      heightController.text = "";
      _result = "Informe seus Dados!";
    });
  }

  void _calculate() {
    setState(() {
      double weight = double.parse(weightController.text.replaceAll(",", "."));
      double height = double.parse(heightController.text) / 100;
      double imc = weight / (height * height);
      print(imc);
      if (imc <= 18.6) {
        _result = "Abaixo do Peso!";
      } else if (imc <= 24.9) {
        _result = "Peso Ideal!";
      } else if (imc <= 29.9) {
        _result = "Levemente Acima do Peso!";
      } else if (imc <= 34.9) {
        _result = "Obesidade Grau I!";
      } else if (imc <= 39.9) {
        _result = "Obesidade Grau II!";
      } else {
        _result = "Obesidade Grau III!";
      }

      FocusScope.of(context).unfocus();
    });
  }

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
            onPressed: _resetFields,
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
              controller: weightController,
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
                controller: heightController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                height: 50,
                child: RaisedButton(
                  onPressed: _calculate,
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
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                _result,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
