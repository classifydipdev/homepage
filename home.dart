import 'package:flutter/material.dart';
import 'homework.dart';
import 'timetable.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class HomePage extends StatelessWidget {

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
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 150.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                  height: 285,
                  width: 380,
                ),
                  ],
                ),
              ),
   ],
  ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 460.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                  height: 328,
                  width: 380,
                ),
                  ],
                ),
              ),
   ],
  ),
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(28, 65, 20, 7),
              child: Text(
                'Welcome, Krish',
                style: TextStyle(fontSize: 23.5, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(28, 105, 20, 7),
              child: Text(
                'JUNE 2, 2019       ·       4 HOMEWORKS',
                style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
      ),
      /* Container(
          margin: EdgeInsets.fromLTRB(350.0, 60.0, 5.0, 0.0),
            width: 38.0,
            height: 38.0,
            child: Material(
              color: Colors.blueGrey[400],
              shape: SquircleBorder(
                side: BorderSide(color: Colors.blueGrey[800], width: 3.0),
              ),
              child: Image.network('https://raw.githubusercontent.com/ScottS2017/local_package/master/lib/image/bipi/placeholder_icon.jpg', fit: BoxFit.cover)
            ),
      ), */
       Container(
            margin: EdgeInsets.fromLTRB(355.0, 70.0, 0.0, 0.0),
            child: Material(
              clipBehavior: Clip.antiAlias,
              shape: SuperellipseShape(
                borderRadius: BorderRadius.circular(28.0),
              ), // SuperellipseShape
              color: Colors.white,
              //shadowColor: Colors.black38,
              shadowColor: Colors.purple[900],
              elevation: 1.0,
              child: Image.network('https://raw.githubusercontent.com/ScottS2017/local_package/master/lib/image/bipi/placeholder_icon.jpg', fit: BoxFit.cover, scale: 8.5),
            ),
          ),
        Container(
            margin: EdgeInsets.fromLTRB(350.0, 140.0, 10.0, 0.0),
           child: CircularGradientButton(
                  elevation: 1.0,
                  gradient: Gradients.aliHussien,
                  child: Icon(
                    Icons.add,
                    size: 23.0,
                    color: Colors.white,
                  ),
                  // callback: () => print(''))
                  callback: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Homework()),
                  );
                },
              ),
          ),
          Row(
            children: <Widget>[
            InkWell(
              onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Homework()),
                  );
            },
              child: Container(
                margin: EdgeInsets.fromLTRB(43.5, 485.0, 0.0, 0.0),
                child: Icon(
                  Icons.calendar_today,
                  size: 25.0,
                  color: Colors.tealAccent,
                ),
              ),
            ),
          InkWell(
            onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Timetable()),
                  );
            },
             child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 485.0, 0.0, 0.0),
                child: Text(
                  'MONDAY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13.5,
                    color: Colors.tealAccent,
                  ),
                ),
              ),
            ),
            ],
          ),
          Row(
            children: <Widget>[
            InkWell(
              onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Timetable()),
                  );
            },
              child: Container(
                margin: EdgeInsets.fromLTRB(43.5, 170.0, 0.0, 0.0),
                child: Icon(
                  Icons.list,
                  size: 30.0,
                  color: Colors.amber[800],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Homework()),
                  );
            },
              child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 170.0, 0.0, 0.0),
                child: Text(
                  'HOMEWORK',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13.5,
                    color: Colors.amber[800],
                  ),
                ),
              ),
            ),
            ],
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
              indicatorColor: Colors.white,
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
          ],
        ),
     ),
    );
 }
}