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
              children: const [
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.home_outlined,
                    size: 35,
                  ),
                ),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.star_outline,
                      size: 35,
                    ))
              ],
            )),
      ),
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: blue,
        child: Icon(Icons.add),
      ),
    );
  }
}
