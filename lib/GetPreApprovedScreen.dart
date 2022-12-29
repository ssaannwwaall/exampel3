import 'package:exampel3/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'Helper.dart';
class GetPreApprovedScreen extends StatefulWidget {
  const GetPreApprovedScreen({Key? key}) : super(key: key);

  @override
  State<GetPreApprovedScreen> createState() => _GetPreApprovedScreenState();
}

class _GetPreApprovedScreenState extends State<GetPreApprovedScreen>  with SingleTickerProviderStateMixin{
  TabController? _tabController;
  int _selectedIndex = 1;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _hight = mediaQueryData.size.height;
    var _width = mediaQueryData.size.width;
    return Scaffold(
      body: SafeArea(
      child: Column(
        children: [
          SizedBox(height: _width*0.1,),
          TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            tabs: const [
              Tab(
                //icon: Icon(Icons.people),
                text: 'Purchase',
              ),
              Tab(
                //icon: Icon(Icons.person),
                text: 'Refinance',
              ),
              Tab(
                //icon: Icon(Icons.person),
                text: 'Equity Take out',
              ),
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    SizedBox(height: _width*0.12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Get Pre-Approved',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Theme.of(context).primaryColor),),
                      ],
                    ),
                    SizedBox(height: _width*0.06,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(maxLines: 2,
                          textAlign: TextAlign.center,
                          'Connect with lenders who can help\n you with pre- approval',
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200,color: Colors.black),),
                      ],
                    ),
                    SizedBox(height: _width*0.06,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(maxLines: 2,
                          textAlign: TextAlign.center,
                          'What type of home are you looking for?',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.black),),
                      ],
                    ),
                    SizedBox(height: _width*0.06,),
                    InkWell(
                        onTap: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                        child: Helper.getHomeCard(_width*0.95, 'Single Family')),
                    SizedBox(height: _width*0.01,),
                    Helper.getHomeCard(_width*0.95, 'Town Home'),
                    SizedBox(height: _width*0.01,),
                    Helper.getHomeCard(_width*0.95, 'Condominium'),
                    SizedBox(height: _width*0.01,),
                    Helper.getHomeCard(_width*0.95, 'Multi-Family'),
                    SizedBox(height: _width*0.01,),
                    Helper.getHomeCard(_width*0.95, 'New Construction'),
                  ],
                ),
                Text('Person')],
            ),
          ),
        ],
      ),

      ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.request_quote_outlined),
              label: 'Loan Request',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Transaction',
            ),


          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
        )
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

