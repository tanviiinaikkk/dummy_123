import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      // drawer: Drawer(
      //   child: ListView(
      //     children: const[
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Color(0xFF29558B),
      //         ), child: Text(
      //         'PsyMoCare',
      //         style: TextStyle(
      //           color: Colors.yellow,
      //           fontSize: 24,
      //         ),
      //       ),
      //       ),
      //       ListTile(
      //         title: Text('Your Account'),
      //         leading: Icon(Icons.account_box_rounded),
      //       ),
      //       ListTile(
      //         title: Text('Your Patients'),
      //         leading : Icon(Icons.people),
      //       ),
      //       ListTile(
      //         title: Text('Notifications'),
      //         leading: Icon(Icons.notification_add),
      //       ),
      //       ListTile(
      //         title: Text('About'),
      //         leading: Icon(Icons.info),
      //       ),
      //     ],
      //   )
      // ),
      // appBar: AppBar(
      //   elevation: 0,
      //   title: const Text("Welcome"),
      //   backgroundColor: const Color(0xFF29558B),
      //   leading: const Icon(Icons.menu),
      //   actions: const [
      //     Padding(
      //         padding: EdgeInsets.only(right: 20.0))
      //         ],
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        items: const [
        Icon(Icons.home,),
        Icon(Icons.favorite),
        Icon(Icons.chat),
        Icon(Icons.account_circle_rounded),
      ],),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed, // Fixed
      //   backgroundColor: Color(0xFF29558B), // <-- This works for fixed
      //   selectedItemColor: Colors.greenAccent,
      //   unselectedItemColor: Colors.grey,
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label : '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label:'',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications),
      //       label:'',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label:'',
      //     ),
      //   ],
      // ),
      body: Column(children: const [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("Find the best doctors for you",
              style: TextStyle(fontSize: 28),
            ),
        ),

        SizedBox(height: 25),
        //Search Bar
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Find your patient...',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
