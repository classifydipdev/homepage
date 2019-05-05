import 'package:flutter/material.dart';


class Timetable extends StatelessWidget {

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
            image: AssetImage("assets/rukut.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 730.0),
        child: Icon(
          Icons.calendar_today, 
            color: Colors.white,
              size: 25.0,
        ),
      ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 120.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                  height: 350,
                  width: 365,
                ),
                  ],
                ),
              ),
           ],
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 500.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                  height: 150,
                  width: 365,
                ),
                  ],
                ),
              ),
           ],
        ),
      ),
      Container(
          margin: EdgeInsets.fromLTRB(300.0, 485.0, 50.0, 0.0),
           child: FloatingActionButton(
             onPressed: () => {},
             backgroundColor: Colors.tealAccent[400],
              child: Icon(
                    Icons.add,
                    size: 23.0,
                    color: Colors.white,
                  ),
           ),
          ),
          Container(
      margin: EdgeInsets.fromLTRB(0.0, 785.0, 0.0, 0.0),
       color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 16), 
                 child: TabBar(
              isScrollable: true,
              labelColor: Colors.white,
              labelPadding: EdgeInsets.fromLTRB(21, 0, 21, 16),
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.tealAccent,
              indicatorPadding: EdgeInsets.fromLTRB(21, 0, 21, 16),
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                  text: "Subjects",
                ),
                Tab(
                  text: "Articles",
                ),
              ],
            ),
          ), 
       ),   
      ]
    ),
   ),
   );
 }
}

