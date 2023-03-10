import 'package:dummy_123/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {

  List<ScreenHiddenDrawer> _pages = [] ;

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name : 'Homepage',
            baseStyle : const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
            selectedStyle : const TextStyle(),
            colorLineSelected: Colors.indigo,
          ),
          const HomePage()),

      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name : 'Your Account',
            baseStyle : const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
            selectedStyle : const TextStyle(),
            colorLineSelected: Colors.indigo,
          ),
          const HomePage()),

      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name : 'Your Patients',
            baseStyle : const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
            selectedStyle : const TextStyle(),
            colorLineSelected: Colors.indigo,
          ),
          const HomePage()),

      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name : 'Settings',
            baseStyle : const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
            selectedStyle : const TextStyle(),
            colorLineSelected: Colors.indigo,
          ),
          const HomePage()),

      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name : 'About',
            baseStyle : const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
            selectedStyle : const TextStyle(),
            colorLineSelected: Colors.indigo,
          ),
          const HomePage()),


    ] ;
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
         backgroundColorMenu: Colors.blueGrey,
         screens: _pages,
         initPositionSelected: 0,
         slidePercent: 60,
    );
  }
}
