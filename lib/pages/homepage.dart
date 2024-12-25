import 'package:flutter/material.dart';
import '../components/bottom_navbar.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index will be used to control the bottom navbar
  int _selectedIndex = 0;

  //this function will be used to control the bottom navbar
  //when the user clicks on a button
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to navigate
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 8),
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
                children: [
                  //logo
                  DrawerHeader(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.zero,
                    child: Image.asset(
                      'lib/assets/logo2.png',
                      color: Colors.white,
                      width: 80,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Colors.grey[600],
                    ),
                  ),

                  //other pages
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 18,
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),

                  //other pages
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                        size: 18,
                      ),
                      title: Text(
                        'About',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),

              //other pages
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 18,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ],
          )),
      body: _pages[_selectedIndex],
    );
  }
}
