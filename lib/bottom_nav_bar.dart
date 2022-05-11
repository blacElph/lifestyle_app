import 'package:flutter/material.dart';
import 'package:lifestyle_app/constants.dart';
import 'package:lifestyle_app/favorites.dart';
import 'package:lifestyle_app/homepage.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentState = 0;
  List<Widget> widgets = [const HomePage(), const FavoritesPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: backgroundColor,
        shape: const CircularNotchedRectangle(),
        notchMargin: 3,
        child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentState = 0;
                    });
                  },
                  icon: Icon(
                    Icons.home_outlined,
                    size: 35,
                    color: currentState == 0 ? blue : grey,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentState = 1;
                    });
                  },
                  icon: Icon(
                    Icons.star_outline,
                    size: 35,
                    color: currentState == 1 ? blue : grey,
                  ),
                ),
              ],
            )),
      ),
      body: widgets[currentState],
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: blue,
        child: Icon(Icons.add),
      ),
    );
  }
}
