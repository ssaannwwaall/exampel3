import 'package:exampel3/process/Procress1.dart';
import 'package:flutter/material.dart';

import 'Widgets/CustomButton.dart';
import 'Widgets/CustomTextField.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controller_city = TextEditingController();

  List<String> cities_all=['Lahore,Islamabad,Karachi'];
  List<String> cities_searched=[];
  bool progressNext=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller_city.addListener(() {
      print('................${_controller_city.text.toString()}');
      searchCity(_controller_city.text.toString().trim());
    });
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _hight = mediaQueryData.size.height;
    var _width = mediaQueryData.size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              height: progressNext? 25:50,
                              progressNext? 'assets/images/ic_topfill_circle.png':'assets/images/ic_empty_circle.png'),
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
                          'assets/images/ic_empty_circle.png'),
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
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: _width * 0.9,
                child: Row(
                  children: const [
                    Text(
                      'Where are you looking to buy?',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomTextField(_width * 0.95, 'Enter city or zipe Code',
                  TextInputType.text, _controller_city),

            ],
          ),
          Expanded(
            child: cities_searched.isNotEmpty?
            ListView.builder(
              itemCount: cities_searched.length,
              itemBuilder: (ctx, index) {
                return SizedBox(
                  width: _width*0.7,
                  //height: 50,
                  child: Row(
                    children: [
                      const Icon(Icons.location_on_outlined,size: 25,),
                      Text(cities_searched[index],style: const TextStyle(fontWeight: FontWeight.w200,fontSize: 14,color: Colors.black),)
                    ],
                  ),
                );
              },
            ):Container(),
          ),
          Column(
            children: [
              CustomButton('Next', _width * 0.95, () {
                Navigator.pushNamed(context, Process1Screen.routeName);
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

  void searchCity(String trim) {
    cities_searched.clear();
     for(int i=0;i<cities_all.length;i++){
      if(cities_all[i].toLowerCase().contains(trim.toLowerCase())){
        cities_searched.add(cities_all[i]);
      }
     }
     print('kkkkkkkkkkkkkk${cities_searched.length}');
    progressNext=true;
     setState(() {

     });
  }
}
