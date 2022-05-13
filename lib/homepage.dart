import 'package:flutter/material.dart';
import 'package:lifestyle_app/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _etSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              color: blue,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.workspaces,
                      color: white,
                    ),
                    Stack(children: [
                      Icon(
                        Icons.notifications_outlined,
                        color: white,
                      ),
                      Positioned(
                          top: 3,
                          right: 3,
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: orange,
                          ))
                    ])
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hi Olsn",
                    style: TextStyle(
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome Back 👋",
                    style: TextStyle(
                        fontSize: 18,
                        color: white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _etSearch,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: white, fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "what category are you searching for?",
                    hintStyle: TextStyle(color: white),
                    prefixIcon: Icon(
                      Icons.search,
                      color: white,
                      size: 30,
                    ),
                    fillColor: liteGrey,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Row(
                  children: const [
                    Icon(
                      Icons.delete_outline,
                      color: blue,
                      size: 35,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.edit_outlined,
                      color: blue,
                      size: 35,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.swap_vert,
                      color: blue,
                      size: 35,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            //first row starts here
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: yellow,
                ),
                padding: EdgeInsets.all(40),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: white,
                      ),
                      child: Icon(
                        Icons.lightbulb_outline,
                        color: darkyellow,
                        size: 60,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'New Ideas',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: darkyellow,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: otherBlue,
                ),
                padding: EdgeInsets.all(40),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: white,
                      ),
                      child: Icon(
                        Icons.music_note_outlined,
                        size: 60,
                        color: darkOtherBlue,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Music',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: darkOtherBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            // second row starts here
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: programmingColor,
                ),
                padding: EdgeInsets.fromLTRB(28, 43, 28, 43),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: white,
                      ),
                      child: Icon(
                        Icons.monitor_outlined,
                        color: darkProgrammingColor,
                        size: 50,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Programming',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: darkProgrammingColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: cookingColor,
                ),
                padding: EdgeInsets.fromLTRB(42, 36, 42, 36),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: white,
                      ),
                      child: Icon(
                        Icons.lunch_dining_outlined,
                        size: 60,
                        color: darkCookingColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Cooking',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: darkCookingColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            // third row starts here
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: travelColor,
                ),
                padding: EdgeInsets.all(43),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: white,
                      ),
                      child: Icon(
                        Icons.airplane_ticket_outlined,
                        color: darkTravelColor,
                        size: 50,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Travel',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: darkTravelColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: scienceColor,
                ),
                padding: EdgeInsets.all(39),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: white,
                      ),
                      child: Icon(
                        Icons.science_outlined,
                        size: 60,
                        color: darkSciecneColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Science',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: darkSciecneColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
