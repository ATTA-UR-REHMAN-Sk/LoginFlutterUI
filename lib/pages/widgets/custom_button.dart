import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double? height, width;
  final Color color;
  final String btnName;
  final VoidCallback ontap;
  const CustomButton(
      {Key? key,
      this.height,
      this.width,
      required this.color,
      required this.btnName,
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        //height: 50,
        //width: 300,
        height: height ?? 50,
        width: width ?? 300,
        // color: Color(0xff4c5980),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          btnName,
          style: TextStyle(
              fontSize: 18, fontFamily: 'Rubik Regular', color: Colors.white),
        )),
      ),
    );
  }
}
