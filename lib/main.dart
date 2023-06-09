import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_calc/Mycontroller.dart';

void main() {
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  String s1 = " ", s2 = " ", ss = " ", sign = " ", value = " ";
  double ans = 0;

  @override
  Widget build(BuildContext context) {
    MyController m = Get.put(MyController());
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Calculater",),
      ),
      body: Container(height: double.infinity,width: double.infinity,color: Colors.black,
        child: Column(
          children: [
            TextField(
              maxLines: 8,
              controller: t1,
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.white,
                fontSize: 30,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Card(color: Colors.grey[700],
                          child: InkWell(
                            onTap: () {
                              t1.text = " ";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "AC",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.grey[700],
                          child: InkWell(
                            onTap: () { ss = t1.text;
                            value = ss.substring(0, ss.length - 1);
                            t1.text = value;
                            if (t1.text == "") {
                              t1.text = " ";
                            }},
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "X",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.grey[700],
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "+/-",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.blue,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "/",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          )))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              t1.text += "7";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "7",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              t1.text += "8";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "8",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              t1.text += "9";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "9",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.blue,
                          child: InkWell(
                            onTap: () {

                              s1 = t1.text;
                              t1.text = " ";
                              sign = "*";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "*",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          )))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              t1.text += "4";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "4",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              t1.text += "5";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "5",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              t1.text += "6";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "6",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.blue,
                          child: InkWell(
                            onTap: () {
                              s1 = t1.text;
                              t1.text = " ";
                              sign = "-";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          )))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              t1.text += "1";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "1",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              t1.text += "2";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "2",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              t1.text += "3";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "3",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.blue,
                          child: InkWell(
                            onTap: () {
                              s1 = t1.text;
                              t1.text = " ";
                              sign = "+";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "+",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          )))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              s1 = t1.text;
                              t1.text = " ";
                              sign = "%";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "%",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              t1.text += "0";
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "0",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.black,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                ".",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Card(color: Colors.blue,
                          child: InkWell(
                            onTap: () {
                              s2=t1.text;
                              m.get_sign(s1, s2, sign);
                              t1.text=m.answer.value;
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "=",
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          )))
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
