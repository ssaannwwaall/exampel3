import 'package:exampel3/Helper.dart';
import 'package:exampel3/helper2.dart';
import 'package:exampel3/process/ApprovedScreen.dart';
import 'package:exampel3/process/Process4.dart';
import 'package:exampel3/process/Procress1.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import '../Widgets/CustomButton.dart';
class Serching extends StatefulWidget {
  static const routeName = "/Serching";
  const Serching({Key? key}) : super(key: key);

  @override
  State<Serching> createState() => _SerchingState();
}

class _SerchingState extends State<Serching> {
  bool progressNext=false;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _hight = mediaQueryData.size.height;
    var _width = mediaQueryData.size.width;
    return Scaffold(
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: _width * 0.15,
              ),

              SizedBox(height: _width*0.01,),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: _width * 0.9,
                child: Row(
                  children: const [
                    Text(
                      'We are searching for the best\nMortgage option for you!',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),

                  ],

                ),

              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: _width * 0.9,
                child: Row(
                  children: const [
                     Text(
                      'Thank you helping us get to know you\n...Searching for the best options',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
      Padding(
        padding: const EdgeInsets.only(left: 20,bottom: 20,right: 20,top: 30),
        child: LiquidLinearProgressIndicator(
          value: 0.25, // Defaults to 0.5.
          valueColor: AlwaysStoppedAnimation(Colors.blue), // Defaults to the current Theme's accentColor.
          backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
          borderColor: Colors.blue,
          borderWidth: 3.0,
          borderRadius: 12.0,
          direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
          center: Text("Loading..."),
        ),
      ),



              Container(
                width: _width * 0.95,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ApprovedScreen.routeName);
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 16),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
