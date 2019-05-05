import 'package:flutter/material.dart';


class Profile extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return DefaultTabController(
     length: 5,
   child: Scaffold(
       backgroundColor: Colors.grey[100],
        body: Stack(
          children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/HomepageGradient.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      ]
    ),
    bottomNavigationBar: Container(
       color: Colors.grey[100],
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 28.0), 
                 child: TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              labelPadding: EdgeInsets.fromLTRB(18, 0, 18, 16),
              unselectedLabelColor: Colors.black45,
              indicatorColor: Colors.blue,
              indicatorPadding: EdgeInsets.fromLTRB(18, 0, 18, 16),
              labelStyle: TextStyle(fontSize: 16.5, fontWeight: FontWeight.bold),
              tabs: <Tab>[
               Tab(
                  text: "Home",
                ),
                Tab(
                  text: "Timetable",
                ),
                Tab(
                  text: "Homework",
                ),
                Tab(
                  text: "Notes",
                ),
                Tab(
                  text: "Articles",
                ),
              ],
            ),
          ), 
       ),
   ),
   );
 }
}