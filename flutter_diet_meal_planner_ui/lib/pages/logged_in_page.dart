import 'package:flutter/material.dart';
import 'package:flutter_diet_tips/pages/homepage.dart';
import 'package:flutter_diet_tips/pages/profile_page.dart';
import 'package:flutter_diet_tips/pages/todo_page.dart';

class LoggedInPage extends StatefulWidget {
  LoggedInPage({Key? key}) : super(key: key);

  @override
  State<LoggedInPage> createState() => _LoggedInPageState();
}

class _LoggedInPageState extends State<LoggedInPage> {
  int currentIndex = 0;
  final screens = [Homepage(), TodoPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          showUnselectedLabels: false,
          iconSize: 30,
          currentIndex: currentIndex,
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood_sharp),
                label: "My Diet",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.note_alt_outlined), label: "Planner"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
    );
  }
}
