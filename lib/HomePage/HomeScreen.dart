import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../AddProductPage/AddProductScreen.dart';
import '../Resource/Common_Checkbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getPrefData();
  }

  var storeBool = [];
  List product = [];

  var amount = 0;

  Future<void> getPrefData() async {
    SharedPreferences? pref = await SharedPreferences.getInstance();

    String? data = pref.getString("ProductList");

    if (data != null) {
      List productItem = jsonDecode(data);

      product = productItem;
      storeBool = List.generate(product.length, (index) => false);
    }
    setState(() {});
  }

  void checkbox(int index) {
    setState(() {
      storeBool[index] = !storeBool[index];
      if (storeBool[index] == true) {
        amount += product[index]["price"] as int;
      } else {
        amount -= product[index]["price"] as int;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Total  Bill Price Is $amount",
              style: const TextStyle(fontSize: 20)),
        ),
        body: ListView.builder(
          itemCount: product.length,
          itemBuilder: (context, index) {
            return productListTile(
              checkBoxValue: storeBool[index],
              title: product[index]["title"],
              subtitle: product[index]["price"].toString(),
              onTap: () => checkbox(index),
              icon: const Icon(Icons.delete),
              onPressedForIcon: () {},
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              getPrefData().then((value) {});
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddProductScreen(),
                  ));
            });
          },
        ));
  }
}
