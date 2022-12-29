import 'package:exampel3/Helper.dart';
import 'package:exampel3/Widgets/customtextfieldform.dart';
import 'package:exampel3/helper2.dart';
import 'package:exampel3/process/Process6.dart';
import 'package:exampel3/process/Process9.dart';
import 'package:exampel3/process/Procress1.dart';
import 'package:exampel3/process/serching.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';
class Process10Form extends StatefulWidget {
  // final Function(bool) callback;
  static const routeName = "/Process10Form";
  //required this.callback
  const Process10Form({Key? key,}) : super(key: key);

  @override
  State<Process10Form> createState() => _Process10FormState();
}

class _Process10FormState extends State<Process10Form> {
  bool _checkbox = true;
  TextEditingController _fname = TextEditingController();
  TextEditingController _lname = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pnumber = TextEditingController();

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
                          'assets/images/ic_100_circle.png'),
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
                        'Confirm your identity?',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10,bottom: 0,right:10,top:10),
                child: Column(
                  children: [
                   Row(
                     children:const [
                        Icon(Icons.person,size: 20,),
                       SizedBox(
                         width: 13,
                       ),
                       Text("First Name")
                     ],
                   ),
                    Customtextfieldform(_width * 0.95, 'Peter',
                        TextInputType.text, _fname
                    ),
                    Row(
                      children:const [
                        Icon(Icons.person,size: 20,),
                        SizedBox(
                          width: 13,
                        ),
                        Text("Last Name")
                      ],
                    ),
                    Customtextfieldform(_width * 0.95, 'Peter',
                        TextInputType.text, _lname
                    ),
                    Row(
                      children:const [
                        Icon(Icons.email_outlined,size: 20,),
                        SizedBox(
                          width: 13,
                        ),
                        Text("Email Address")
                      ],
                    ),
                    Customtextfieldform(_width * 0.95, 'Peter',
                        TextInputType.text, _email
                    ),
                    Row(
                      children:const [
                        Icon(Icons.call,size: 20,),
                        SizedBox(
                          width: 13,
                        ),
                        Text("Phone Number")
                      ],
                    ),
                    Customtextfieldform(_width * 0.95, '012345678',
                        TextInputType.text, _pnumber
                    ),
                    const SizedBox(height: 10,),
                    Customtextfieldform(_width * 0.95, 'abcdefghjkalmnopqurstuvwxyz',
                        TextInputType.text, _pnumber
                    ),
      // CheckboxListTile(
      //   title: const Text('Remember Password', style: TextStyle(color: Colors.grey),),
      //   value: _checkbox,
      //   onChanged: (value) {
      //     widget.callback(value!);
      //     setState(() => _checkbox = !_checkbox);},
      // )

                  ],
                ),
              ),

              SizedBox(height: _width*0.06,),

              CustomButton('Next', _width * 0.95, () {

                Navigator.pushNamed(context, Serching.routeName);
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
