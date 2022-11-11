import 'package:flutter/material.dart';

class Category{
  //obj gan cho bien kieu final duoc cap nhat gia tri
  final String id;
  final String title;
  final Color color;

  const Category({
    @required this.id,
    @required this.title,
    this.color = Colors.blue,
  });
}