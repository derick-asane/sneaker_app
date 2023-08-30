import 'package:eyeme/pages/cart_page.dart';
import 'package:eyeme/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:eyeme/pages/cart_page.dart';
import 'package:eyeme/pages/shop_page.dart';
import 'package:eyeme/widgets/bottom_nav_bar.dart';

import '../widgets/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nave bar
  int _selectedIndex=0;
  //this is a method which called to update the state of the index
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  //this is a list containing our pages
  final List<Widget> _pages=[
    const ShopPage(),
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) =>IconButton(
              icon: const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Icon(
                    Icons.menu,
                    color: Colors.black,
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              ),

        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(

             children:[
                DrawerHeader(
                child: Image.asset(
                  'assets/images/nike-logo1.png',
                  color: Colors.white,
                )
              ),
              Divider(
                color: Colors.grey[800],
                thickness: 4.0,
              ),
             const  Padding(
                padding: EdgeInsets.only(left: 25.0 ),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0 ),
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              ]
            ),

           const Padding(
              padding: EdgeInsets.only(left: 25.0 ),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
        bottomNavigationBar: MyButtonNavBar(
          onTabChange: (index) => navigateBottomBar(index) ,
        ),

      body: _pages[_selectedIndex],
    );
  }
}
