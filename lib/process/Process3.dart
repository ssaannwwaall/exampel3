import 'package:exampel3/Helper.dart';
import 'package:exampel3/helper2.dart';
import 'package:exampel3/process/Process4.dart';
import 'package:exampel3/process/Procress1.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';
class Process3Screen extends StatefulWidget {
  static const routeName = "/Process3Screen";
  const Process3Screen({Key? key}) : super(key: key);

  @override
  State<Process3Screen> createState() => _Process3ScreenState();
}

class _Process3ScreenState extends State<Process3Screen> {
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
                              'assets/images/ic_empty_circle.png'),
                          Image.asset(
                              width: 50,
                              height:50,
                              progressNext? 'assets/images/ic_topfill_circle.png':'assets/images/ic_75_circle.png'),
                          Image.asset(
                              width: 50,
                              height:50,
                              progressNext? 'assets/images/ic_topfill_circle.png':'assets/images/ic_tik_with-back.png'),
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
                          width: _width * 0.15,
                          height: 50,
                          'assets/images/ic_line.png'),
                      const Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                          width: 50,
                          height: 50,
                          'assets/images/ic_75_circle.png'),
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
                          width: _width * 0.15,
                          height: 50,
                          'assets/images/ic_line.png'),
                      const Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                          width: 50,
                          height: 50,
                          'assets/images/ic_empty_circle.png'),
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
                          width: _width * 0.15,
                          height: 50,
                          'assets/images/ic_line.png'),
                      const Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                          width: 50,
                          height: 50,
                          'assets/images/ic_empty_circle.png'),
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
                      'Do you currently own a home?',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              // //Helper.getHomeCard(_width*0.80, 'What are your plans for the house?'),
              // SizedBox(height: _width*0.01,),
              SizedBox(height: _width*0.06,),
              Helper2.getHomeCard(_width*0.95, 'Yes, I Currently own a home'),
              SizedBox(height: _width*0.01,),
              CustomButton('No, I am  Currently renting', _width * 0.95, () {

                Navigator.pushNamed(context, Process4Screen.routeName);
              }),
              SizedBox(height: _width*0.01,),
              Helper2.getHomeCard(_width*0.95, 'No,I have other  living arrangements'),




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
