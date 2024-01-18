import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double? width;
  ResponsiveButton({
    Key? key,
    this.isResponsive = false,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Image.asset("img/imgic.png")],
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 97, 28, 247),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
