import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController _controller;
  final String hint;
  final double _width;
  final TextInputType keyboardType;

  CustomTextField(this._width, this.hint, this.keyboardType, this._controller);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: _width,
        margin: const EdgeInsets.all(5),
        child: TextFormField(
          cursorColor: Colors.white,
          controller: _controller,
          keyboardType: keyboardType,
          style: const TextStyle(fontSize: 15, color: Colors.black),
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true, 
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
            ),
            disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
            ),
            contentPadding: const EdgeInsets.all(15),
            //labelText: hint,
            hintText: hint,
          ),
        ),
      );
  }
}
