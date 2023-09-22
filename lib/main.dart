import 'package:flutter/material.dart';
import 'package:practical/screens/category.dart';
import 'package:practical/screens/details.dart';
import 'package:practical/screens/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const homepage(),
      'details': (context) => const detailpage(),
      'category': (context) => const category(),
    },
  ));
}
