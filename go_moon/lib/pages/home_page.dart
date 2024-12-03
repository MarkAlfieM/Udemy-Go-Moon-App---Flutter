import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidgth;
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidgth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: _deviceHeight * 0.05),
            height: _deviceHeight,
            width: _deviceWidgth,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.max,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _pageTitle(),
                _destinationDropDownWidget(),
              ],
            )),
      ),
    );
  }

  Widget _pageTitle() {
    return Container(
      color: Colors.green,
      child: const Text(
        "#GoMoon",
        style: TextStyle(
          color: Colors.white,
          fontSize: 70,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/astro_moon.png"))),
    );
  }

  Widget _destinationDropDownWidget() {
    List<String> _items = [
      'James Webb Station',
      'Preneure Station',
    ];

    return DropdownMenuItem(
        child: DropdownButton(
      underline: Container(),
      onChanged: (_) {},
      items: _items.map((e) {
        return DropdownMenuItem(
          child: Text(e),
          value: e,
        );
      }).toList(),
    ));
  }
}
