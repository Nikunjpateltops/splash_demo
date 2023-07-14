import 'package:flutter/material.dart';

Widget customCheckbox(
    {required void Function(bool) onChangedCustom,
    required bool? checkBoxValue}) {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      color: checkBoxValue == true ? Colors.purple : Colors.green,
    ),
    child: Transform.scale(
      scale: 2.5,
      child: Checkbox(
        value: checkBoxValue,
        onChanged: (value) => onChangedCustom(value!),
      ),
    ),
  );
}
