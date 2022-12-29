import 'package:flutter/material.dart';

class Customtextfieldform extends StatelessWidget {
  final TextEditingController _controller;
  final String hint;
  final double _width;
  final TextInputType keyboardType;

  Customtextfieldform(this._width, this.hint, this.keyboardType, this._controller);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: _width,
        margin: const EdgeInsets.all(5),
        child: TextFormField(
          cursorColor: Colors.black,
          controller: _controller,
          keyboardType: keyboardType,
          style: const TextStyle(fontSize: 15, color: Colors.black),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.grey[200],
            filled: true,
            contentPadding: const EdgeInsets.all(15),
            //labelText: hint,
            hintText: hint,
          ),
        ),
      );
  }
}
