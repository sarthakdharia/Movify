import 'package:flutter/material.dart';

// Repeated code for TextField
const kTextFiledInputDecoration = InputDecoration(
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 116, 243, 252)),
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 218, 218, 218), width: 2),
  ),
  labelText: " Email address",
  labelStyle: TextStyle(
      color: Color.fromARGB(255, 221, 215, 215),
      fontSize: 14,
      fontWeight: FontWeight.w400),
);
