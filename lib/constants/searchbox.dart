

import 'package:flutter/material.dart';

Widget SearchBox() {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(22),
    ),
    child: const TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(Icons.search, color: Colors.black, size: 25),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 30,
          minHeight: 25,
        ),
        border: InputBorder.none,
        hintText: 'Search',
      ),
    ),
  );
}
