// ignore_for_file: file_names, constant_identifier_names

import 'package:flutter/material.dart';

const DecorationTextfield = InputDecoration(
  // To delete borders
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
    ),
  ),
  // fillColor: Colors.red,
  filled: true,
  contentPadding: EdgeInsets.all(8),
);
