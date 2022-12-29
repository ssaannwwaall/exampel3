import 'package:exampel3/Helper.dart';
import 'package:exampel3/helper2.dart';
import 'package:exampel3/process/Process10Form.dart';
import 'package:exampel3/process/Process3.dart';
import 'package:exampel3/process/Process8.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';
class Process9Screen extends StatefulWidget {
  static const routeName = "/Process9Screen";
  const Process9Screen({Key? key}) : super(key: key);

  @override
  State<Process9Screen> createState() => _Process9ScreenState();
}

class _Process9ScreenState extends State<Process9Screen> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                              width: 50,
                              height: 50,
                              'assets/images/ic_fill_circle.png'),
                          Image.asset(
                              width: 50,
                              height:50,
                              'assets/images/ic_tik.png')
                          //progressNext? 'assets/images/ic_topfill_circle.png':'assets/images/ic_tik_with-back.png'),
                        ],
                      ),
                      const Text(
                        'Property',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                          width: _width * 0.1,
                          height: 50,
                          'assets/images/ic_line_filled.png'),
                      const Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                              width: 50,
                              height: 50,
                              'assets/images/ic_fill_circle.png'),
                          Image.asset(
                              width: 50,
                              height:50,
                              'assets/images/ic_tik.png')
                          //progressNext? 'assets/images/ic_topfill_circle.png':'assets/images/ic_tik_with-back.png'),
                        ],
                      ),
                      const Text(
                        'TimeLine',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                          width: _width * 0.1,
                          height: 50,
                          'assets/images/ic_line_filled.png'),
                      const Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                              width: 50,
                              height: 50,
                              'assets/images/ic_fill_circle.png'),
                          Image.asset(
                              width: 50,
                              height:50,
                              'assets/images/ic_tik.png')
                          //progressNext? 'assets/images/ic_topfill_circle.png':'assets/images/ic_tik_with-back.png'),
                        ],
                      ),
                      const Text(
                        'Details',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                          width: _width * 0.1,
                          height: 50,
                          'assets/images/ic_line_filled.png'),
                      const Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                              width: 50,
                              height: 50,
                              'assets/images/ic_empty_circle.png'),
                          Image.asset(
                              width: 50,
                              height:25,
                              'assets/images/ic_topfill_circle.png'),
                        ],
                      ),
                      const Text(
                        'Finish',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: _width*0.01,),
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: _width * 0.9,
                child: Row(
                  children: const [
                    Text(
                      'Have you had a foreclosure or\nbankruptcy in the past 3 year',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: _width*0.06,),
              Helper2.getHomeCard(_width*0.95, 'Yes'),

              SizedBox(height: _width*0.01,),
              CustomButton('No', _width * 0.95, () {

                Navigator.pushNamed(context, Process10Form.routeName);
              }),




              Container(
                width: _width * 0.95,
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Back',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 16),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
