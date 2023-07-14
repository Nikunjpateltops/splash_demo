import 'package:flutter/material.dart';

Widget splashContainer() {
  return Container(
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://images.pexels.com/photos/3825880/pexels-photo-3825880.jpeg?auto=compress&cs=tinysrgb&w=800'),
        )),
    height: 500,
    width: 350,
  );
}

Widget splashForFirstRow() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Take in Mobile \n Application',
        style: TextStyle(
            color: Colors.black, fontSize: 40, fontWeight: FontWeight.w600),
      ),
    ],
  );
}

Widget splashForSecondRow() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '''Try this smart tool to better \n manage your ost important tasks''',
        style: TextStyle(fontSize: 22, color: Colors.black38),
      )
    ],
  );
}

Widget sizeBoxForSplash() {
  return const SizedBox(
    height: 30,
  );
}
