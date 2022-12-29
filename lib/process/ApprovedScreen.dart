import 'package:exampel3/Helper.dart';
import 'package:exampel3/helper2.dart';
import 'package:exampel3/process/Process4.dart';
import 'package:exampel3/process/Procress1.dart';
import 'package:exampel3/process/uploadimages.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import '../Widgets/CustomButton.dart';
class ApprovedScreen extends StatefulWidget {
  static const routeName = "/ApprovedScreen";
  const ApprovedScreen({Key? key}) : super(key: key);

  @override
  State<ApprovedScreen> createState() => _ApprovedScreenState();
}

class _ApprovedScreenState extends State<ApprovedScreen> {
  bool progressNext=false;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _hight = mediaQueryData.size.height;
    var _width = mediaQueryData.size.width;
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: _width * 0.15,
              ),

              SizedBox(height: _width*0.01,),
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: _width * 0.9,
                child: Row(
                  children: const [
                    Text(
                      'Congratulations... You are\napproved for the following\nrates',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),

                  ],

                ),

              ),

              Container(
                margin: const EdgeInsets.only(top: 100),
                width: _width * 0.9,
                child: const Center(
                  child: Text(
                    '4.99%',
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.only(top: 30,bottom: 50 ),
                width: _width * 0.9,
                child: const Center(
                  child: Text(
                    '5 Years APR',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),

              ),




            ],
          ),
          SizedBox(height: _width*0.06,),
          Center(
            child: CustomButton('Close', _width * 0.95, () {

              Navigator.pushNamed(context, ImageUpload.routeName);
            }),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
