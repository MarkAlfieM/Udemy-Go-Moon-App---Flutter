import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

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
            // color: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: _deviceHeight * 0.05),
            height: _deviceHeight,
            width: _deviceWidgth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _pageTitle(),
                _destinationDropDownWidget(),
                _travellersInformatiopWidget(),
              ],
            )),
      ),
    );
  }

  Widget _pageTitle() {
    return Container(
      // color: Colors.green,
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
    return CustomDropdownButtonClass(values: const [
      'James Webb Station',
      'Preneure Station',
    ], width: _deviceWidgth);
  }

  Widget _travellersInformatiopWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomDropdownButtonClass(
            values: const ['1', '2', '3', '4'], width: _deviceWidgth),
        CustomDropdownButtonClass(values: const [
          'Economy',
          'Businees Class',
          'First Class',
          'Elite Shit'
        ], width: _deviceWidgth),
      ],
    );
  }
}
