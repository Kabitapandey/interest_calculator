import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Interest Calculator",
    home: InterestCalculator()));

class InterestCalculator extends StatefulWidget {
  @override
  _InterestCalculatorState createState() => _InterestCalculatorState();
}

class _InterestCalculatorState extends State<InterestCalculator> {
  final _key = GlobalKey<FormState>();
  double si = 0;
  double p, r, t;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(25.0)),
          child: ListView(
            children: [
              Form(
                key: _key,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 25.0, left: 25.0, right: 25.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter a principal";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          p = double.parse(value);
                        },
                        decoration: InputDecoration(
                            hintText: "Enter principal",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 25.0, left: 25.0, right: 25.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter a rate";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          r = double.parse(value);
                        },
                        decoration: InputDecoration(
                          hintText: "Enter rate",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 25.0, left: 25.0, right: 25.0),
                      child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter a time";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            t = double.parse(value);
                          },
                          decoration: InputDecoration(
                              hintText: "Enter time",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0)))),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: MaterialButton(
                  onPressed: () {
                    if (_key.currentState.validate()) {
                      this.setState(() {
                        si = (p * t * r) / 100;
                      });
                    }
                  },
                  color: Colors.blue,
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Center(
                child: Text(
                  "Simple Interest is: $si",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
