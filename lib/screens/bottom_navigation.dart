import 'package:butique_app/screens/add_new_customer.dart';
import 'package:butique_app/screens/home_page.dart';
import 'package:flutter/material.dart';

import 'home_page_new.dart';


class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePageNew(),
    ClockScreen(),
    AddNewCustomer(),
    HomePage(),
    NotificationScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        height: 100,
        color: Color(0xff5057DC),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home,size: 40,),
              color: _selectedIndex == 0 ? Colors.white : Colors.grey.shade300,
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: const Icon(Icons.access_time,size: 40,),
              color: _selectedIndex == 1 ? Colors.white : Colors.grey.shade300,
              onPressed: () => _onItemTapped(1),
            ),
            const SizedBox(width: 40), // Space for the floating action button
            IconButton(
              icon: const Icon(Icons.person,size: 40,),
              color: _selectedIndex == 3 ? Colors.white : Colors.grey.shade300,
              onPressed: () => _onItemTapped(3),
            ),
            IconButton(
              icon: const Icon(Icons.notifications,size: 40,),
              color: _selectedIndex == 4 ? Colors.white : Colors.grey.shade300,
              onPressed: () => _onItemTapped(4),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 1,color: Color(0xff5057DC))
        ),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100)
          ),
          backgroundColor: Colors.white,
          onPressed: () => _onItemTapped(2),
          tooltip: 'Add Post',
          elevation: 2.0,
          child: const Icon(Icons.add,size: 70,color: Color(0xff5057DC)),
        ),
      ),
    );
  }
}


class ClockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Clock Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Notification Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
