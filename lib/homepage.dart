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
                      fontSize: 16, color: white, fontWeight: FontWeight.w400),
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
                      fontSize: 18, color: white, fontWeight: FontWeight.w800),
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
        )
      ],
    ));
  }
}
