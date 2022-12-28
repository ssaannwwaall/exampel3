
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Helper{
  static Widget getHomeCard(double _width,String label){
    return Card(
      child: Container(
        width: _width,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            borderRadius:  BorderRadius.all(Radius.circular(5)),
            //border: Border.all(color: Colors.grey)
        ),
        child: Text(
          textAlign: TextAlign.center,
          label,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
      ),
    );
  }
}