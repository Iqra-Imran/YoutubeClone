import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: "Enter username",
          labelStyle: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.redAccent, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(20.0)))),
    );
  }
}
