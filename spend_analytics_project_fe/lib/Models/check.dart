import 'package:flutter/material.dart';

class Check {
  final String title;
  final String description;
  bool checked = false;


  Check({
    @required this.description, 
    @required this.title, 
});
}