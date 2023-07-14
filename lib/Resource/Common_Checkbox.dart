import 'package:flutter/material.dart';

Widget productListTile(
    {required String title,
    required String subtitle,
    required VoidCallback onTap,
    required bool checkBoxValue,
    required Widget icon,
    required void Function()? onPressedForIcon}) {
  return ListTile(
    title: Text(title,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
    subtitle: Text(subtitle,
        style: const TextStyle(
            fontSize: 16, color: Colors.black87, fontWeight: FontWeight.w400)),
    leading: customCheckbox(onTap: onTap, checkBoxValue: checkBoxValue),
    trailing: IconButton(
        onPressed: onPressedForIcon,
        icon: icon,
        style: const ButtonStyle(iconSize: MaterialStatePropertyAll(36))),
  );
}

Widget customCheckbox(
    {required VoidCallback onTap, required bool? checkBoxValue}) {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      color: checkBoxValue == true ? Colors.purple : Colors.green,
    ),
    child: Transform.scale(
      scale: 2.8,
      child: Checkbox(
        value: checkBoxValue,
        onChanged: (value) => onTap(),
      ),
    ),
  );
}
