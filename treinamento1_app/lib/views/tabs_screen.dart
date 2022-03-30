import 'package:flutter/material.dart';
import 'package:treinamento1_app/views/home_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  late List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {'screen': HomeScreen()},
      {'screen': HomeScreen()}, //iria apartir daqui as outras 3 telas
      {'screen': HomeScreen()},
      {'screen': HomeScreen()},
    ];
  }

  void _selectScreen(int index){
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
