import 'package:flutter/material.dart';
// import 'package:gradient_widgets/gradient_widgets.dart';
// import 'package:superellipse_shape/superellipse_shape.dart';
// import 'profile.dart';
// import 'homework.dart';
// import 'timetable.dart';
import 'home.dart';
// import 'package:flare_flutter/flare_actor.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch: Colors.indigo,
       highlightColor: Colors.transparent,
       splashColor: Colors.transparent,
     ),
     home: HomePage(),
   );
  }
 }



/* class SquircleBorder extends ShapeBorder {
  final BorderSide side;
  final double superRadius;

  const SquircleBorder({
    this.side: BorderSide.none,
    this.superRadius: 5.0,
  })
    : assert(side != null),
      assert(superRadius != null);

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(side.width);

  @override
  ShapeBorder scale(double t) {
    return new SquircleBorder(
      side: side.scale(t),
      superRadius: superRadius * t,
    );
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return _squirclePath(rect.deflate(side.width), superRadius);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return _squirclePath(rect, superRadius);
  }

  static Path _squirclePath(Rect rect, double superRadius) {
    final c = rect.center;
    final dx = c.dx * (1.0 / superRadius);
    final dy = c.dy * (1.0 / superRadius);
    return new Path()
      ..moveTo(c.dx, 0.0)
      ..relativeCubicTo(c.dx - dx, 0.0, c.dx, dy, c.dx, c.dy)
      ..relativeCubicTo(0.0, c.dy - dy, -dx, c.dy, -c.dx, c.dy)
      ..relativeCubicTo(-(c.dx - dx), 0.0, -c.dx, -dy, -c.dx, -c.dy)
      ..relativeCubicTo(0.0, -(c.dy - dy), dx, -c.dy, c.dx, -c.dy)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {
    switch (side.style) {
      case BorderStyle.none:
        break;
      case BorderStyle.solid:
        var path = getOuterPath(rect.deflate(side.width / 2.0), textDirection: textDirection);
        canvas.drawPath(path, side.toPaint());
    }
  }
} */


/* Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              height: 550,
              width: 444,
            ),
          ), */


/* onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => TimetablePage()),
                  );
            }, */


// onPressed: () => Navigator.of(context).pop(),

/* bottomNavigtionBar: Container(
            color: Colors.transparent,
              child: Container( 
                 child: TabBar(
              isScrollable: true,
              labelColor: Colors.white,
              labelPadding: EdgeInsets.fromLTRB(18, 0, 18, 16),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorColor: Colors.white,
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
       ), */

// proxima nova