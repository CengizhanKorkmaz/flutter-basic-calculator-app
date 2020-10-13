import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void toplama() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void cikarma() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void carpma() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void bolme() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 / num2;
    });
  }

  void temizle() {
    setState(() {
      num1 = 0;
      num2 = 0;
      sum = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Caluculator App"), centerTitle: true),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Output:$sum",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[300],
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter First Number"),
                controller: t1,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter Second Number"),
                controller: t2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      MaterialButton(
                        child: Text("+"),
                        color: Colors.green,
                        onPressed: toplama,
                      ),
                      MaterialButton(
                        child: Text("-"),
                        color: Colors.green,
                        onPressed: cikarma,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      MaterialButton(
                        child: Text("/"),
                        color: Colors.green,
                        onPressed: bolme,
                      ),
                      MaterialButton(
                        child: Text("*"),
                        color: Colors.green,
                        onPressed: carpma,
                      ),
                    ],
                  ),
                ],
              ),
              RaisedButton(
                child: Text("Clear"),
                color: Colors.green,
                onPressed: temizle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
