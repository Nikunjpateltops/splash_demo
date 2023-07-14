import 'dart:convert';
import 'package:flash_navigation_ui_project/HomePage/HomeScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  Future<void> onTapAdd(BuildContext context) async {
    SharedPreferences? pref = await SharedPreferences.getInstance();
    List product1 = [];
    String? data = pref.getString("ProductList");
    if (data != null) {
      product1 = jsonDecode(data);
      product1.add({
        "title": nameController.text.trim(),
        "price": int.parse(priceController.text.trim().toString())
      });
    } else {
      product1.add({
        "title": nameController.text.trim(),
        "price": int.parse(priceController.text.trim().toString())
      });
    }
    await pref.setString("ProductList", jsonEncode(product1));

    if (!context.mounted) return;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));

    print(product1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    label: const Text('Enter Product name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: priceController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Enter Price',
                  hintText: 'Enter Your Price'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("Hello");
                  }
                  onTapAdd(context);
                },
                child: const Text("Add Product"))
          ],
        ),
      ),
    );
  }
}
