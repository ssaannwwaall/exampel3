import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String lable;
  final void Function()? _function_handler;
  final double width;
  CustomButton(this.lable, this.width, this._function_handler);

  //static StreamBuilder

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 16),
        ),
        onPressed: _function_handler,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            lable,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
