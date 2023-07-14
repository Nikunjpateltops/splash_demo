import 'package:flutter/material.dart';

import 'common_widget.dart';

class CheckBoxPractice extends StatefulWidget {
  const CheckBoxPractice({super.key});

  @override
  State<StatefulWidget> createState() => CheckBoxPriceState();
}

class CheckBoxPriceState extends State<CheckBoxPractice> {
  bool first = false;
  bool second = false;
  bool third = false;
  bool four = false;
  bool five = false;

  var amount = 0;

  var pizza = 700;
  var burger = 900;
  var coffee = 300;
  var cake = 600;
  var iceCream = 800;

  void checkbox1(bool value1) {
    setState(() {
      first = value1;

      if (first == true) {
        amount = amount + pizza;
      } else {
        amount = amount - pizza;
      }
    });
  }

  void checkbox2(bool value2) {
    setState(() {
      second = value2;
      if (second == true) {
        amount = amount + burger;
      } else {
        amount = amount - burger;
      }
    });
  }

  void checkbox3(bool value3) {
    setState(() {
      third = value3;
      if (third == true) {
        amount = amount + coffee;
      } else {
        amount = amount - coffee;
      }
    });
  }

  void checkbox4(bool value4) {
    setState(() {
      four = value4;

      if (four == true) {
        amount = amount + cake;
      } else {
        amount = amount - cake;
      }
    });
  }

  void checkbox5(bool value5) {
    setState(() {
      five = value5;
      if (five == true) {
        amount = amount + iceCream;
      } else {
        amount = amount - iceCream;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox Practice"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          Row(
            children: [
              customCheckbox(
                checkBoxValue: first,
                onChangedCustom: checkbox1,
              ),
              const SizedBox(
                width: 30,
              ),
              Text("Pizza value is $pizza",
                  style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              customCheckbox(onChangedCustom: checkbox2, checkBoxValue: second),
              const SizedBox(
                width: 30,
              ),
              Text("Burger value is $burger",
                  style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              customCheckbox(
                  onChangedCustom: (p0) => checkbox3(p0), checkBoxValue: third),
              const SizedBox(
                width: 30,
              ),
              Text("Coffee value is $coffee",
                  style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              customCheckbox(
                  onChangedCustom: (p0) => checkbox4(p0), checkBoxValue: four),
              const SizedBox(
                width: 30,
              ),
              Text("cake value is $cake",
                  style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              customCheckbox(
                  onChangedCustom: (p0) => checkbox5(p0), checkBoxValue: five),
              const SizedBox(
                width: 30,
              ),
              Text("Ice-Cream value is $iceCream",
                  style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Bill Amount  is $amount',
                style: const TextStyle(fontSize: 24, color: Colors.black),
              )
            ],
          )
        ]),
      ),
    );
  }
}
