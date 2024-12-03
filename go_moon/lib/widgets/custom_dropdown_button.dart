import 'package:flutter/material.dart';

class CustomDropdownButtonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropdownButtonClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      decoration: BoxDecoration(
          color: Color.fromRGBO(53, 53, 53, 1.0),
          borderRadius: BorderRadius.circular(
            10,
          )),
      child: DropdownMenuItem(
          child: DropdownButton(
        underline: Container(),
        onChanged: (_) {},
        value: values.first,
        dropdownColor: Color.fromRGBO(51, 51, 51, 1),
        style: TextStyle(color: Colors.white),
        items: values.map((e) {
          return DropdownMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList(),
      )),
    );
  }
}
