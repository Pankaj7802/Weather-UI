import 'package:flutter/material.dart';

class SliderDot extends StatelessWidget {
  late bool isActive;
  SliderDot(this.isActive);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedContainer(
      duration: Duration(microseconds: 150),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 5,
        width: isActive ? 12 : 5,
        decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.white54,
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
    );
  }
}
