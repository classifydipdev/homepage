import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'dart:async';
// import 'bubblebottombar.dart';
import 'home.dart';
import 'timetable.dart';
import 'profile.dart';
// import 'package:sliding_up_panel/sliding_up_panel.dart';

/* class Homework extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return DefaultTabController(
     length: 5,
   child: Scaffold(
       backgroundColor: Colors.grey[100],
        body: StreamBuilder(
        stream: Firestore.instance.collection('flutter_data').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return CircularProgressIndicator();
          return HomeworkListView(documents: snapshot.data.documents);
        },
      ),
    )
   );
 }
} */


class Homework extends StatefulWidget {
  @override
  createState() => TodoListState();
}

class TodoListState extends State<Homework> {
  List<String> _todoItems = [];

  final String subjectGeography = 'Geography';
  final String subjectComputerScience = 'Computer Science';
  final String subjectMaths = 'Maths';
  final String subjectEnglish = 'English';
  final String subjectHistory = 'History';
  final String subjectSpanish = 'Spanish';
  final String subjectBiology = 'Biology';
  final String subjectLatin = 'Latin';
  final String subjectDT = 'DT';
  final String subjectFrench = 'French';
  final String subjectChemistry = 'Chemistry';

  List<String> _selectedSubjects = [
    "Geography",
    "Computer Science",
    "Maths",
    "English",
    "History",
    "Spanish",
    "Biology",
    "Latin",
    "DT",
    "French",
    "Chemistry",
  ];

 int _currentIndex = 2;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  var pages = [
    HomePage(),
    Homework(),
    Timetable(),
    Profile()
  ];


Widget build(BuildContext context) {
  return Scaffold(
    resizeToAvoidBottomInset: false,
    body: Stack(
      children: <Widget> [
      Positioned(
      top: 0.0,
      child: Image.asset(
        'assets/HomeworkGradient.png',
        fit: BoxFit.cover,
      ),
    ),
      /* Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/rukut.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ), */
      Container(
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 90.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                elevation: 1.0,
                onPressed: () {
                  _settingModalBottomSheet(context);
              },
            child: Icon(Icons.create),
              backgroundColor: Colors.orange[400],
            ), 
          ],
        ), 
        ],
      ),
      ),
      Column(
        mainAxisSize: MainAxisSize.max, 
        mainAxisAlignment: MainAxisAlignment.end,
        children:<Widget> [ 
            BubbleBottomBar(
                        opacity: 0.2,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20),),
                        elevation: 5.0,
                        // fabLocation: BubbleBottomBarFabLocation.end, //new
                        hasNotch: false, //new
                        items: <BubbleBottomBarItem>[
                            BubbleBottomBarItem(backgroundColor: Colors.orange[400], icon: Icon(Icons.dashboard, color: Colors.grey[700],), activeIcon: Icon(Icons.dashboard, color: Colors.orange[400],), title: Text("Home")),
                            BubbleBottomBarItem(backgroundColor: Colors.deepPurple, icon: Icon(Icons.access_time, color: Colors.grey[700],), activeIcon: Icon(Icons.access_time, color: Colors.deepPurple,), title: Text("Logs")),
                            BubbleBottomBarItem(backgroundColor: Colors.indigo, icon: Icon(Icons.folder_open, color: Colors.grey[700],), activeIcon: Icon(Icons.folder_open, color: Colors.indigo,), title: Text("Folders")),
                            BubbleBottomBarItem(backgroundColor: Colors.green, icon: Icon(Icons.menu, color: Colors.grey[700],), activeIcon: Icon(Icons.menu, color: Colors.green,), title: Text("Menu"))
                        ],
                        currentIndex: _currentIndex,
                        onTap: (index) {
                            setState(() {
                              _currentIndex = index;
                        });
                  }, 
              )
          ],
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
      _buildTodoList(),
      ],
      ),
  );
}



/* void _pushAddTodoScreen() {

  
  // Push this page onto the stack
  /* Navigator.of(context).push(
    // MaterialPageRoute will automatically animate the screen entry, as well
    // as adding a back button to close it
    MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Add a new homework')
          ),
          body: Stack(
            children:<Widget>[
            Column(
            children: <Widget>[
            SizedBox(height: 20),
            TextField(
            autofocus: true,
            onSubmitted: (val) {
              _addTodoItem(val);
              Navigator.pop(context); // Close the add todo screen
            },
            decoration: InputDecoration(
              hintText: 'Which subject is your homework? ',
              contentPadding: EdgeInsets.all(16.0)
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter a description of your homework...',
              contentPadding: EdgeInsets.all(16.0)
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: 'When is your homework due?',
              contentPadding: EdgeInsets.all(16.0)
            ),
          ),
          ],
          ),
          ],
          ),
        );
      }
    ),
  );
} */ */


void _addTodoItem(String task) {
  // Only add the task if the user actually entered something
  if(task.length >= 0) {
    setState(() => _todoItems.add(task));
  }
}


void _settingModalBottomSheet(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
          return Stack(
            children:<Widget>[
            Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            SizedBox(
              height: 210,
              child: BottomSheet(
                enableDrag: false,
                onClosing: () => [],
                builder: (BuildContext bc){
                  return Stack(
                    children: <Widget>[
                     Column(
                      children: <Widget>[
                      Row(
                       children: <Widget>[
                         Container(
                           margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
                           child: Text(
                           "Subjects",
                           style: TextStyle(
                             fontSize: 16.5,
                             fontWeight: FontWeight.bold,
                             color: Colors.grey[400],
                           ),
                         ),
                         ),
                        ],
                      ), 
                      Row(
                        children: <Widget>[
                       Container(
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0), 
                        child: InkWell(
                          onTap: () {
                            
                          },
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 90.0,
                            height: 32.5,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400], 
                                ],
                                stops: [0.25, 0.50, 0.75, 1],
                              ),
                            border: Border.all(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0), 
                            ),
                            child: Center(child: Text('Geography', style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                        ),
                       ),
                       Container(
                        margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0), 
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 135.0,
                            height: 32.5,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400], 
                                ],
                                stops: [0.25, 0.50, 0.75, 1],
                              ),
                            border: Border.all(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0), 
                            ),
                            child: Center(child: Text('Computer Science', style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                        ),
                       ),
                       Container(
                        margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0), 
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 65.0,
                            height: 32.5,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400], 
                                ],
                                stops: [0.25, 0.50, 0.75, 1],
                              ),
                            border: Border.all(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0), 
                            ),
                            child: Center(child: Text('Maths', style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                        ),
                       ),
                      ],
                     ),
                    Row(
                    children: <Widget>[
                     Container(
                        margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0), 
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 75.0,
                            height: 32.5,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400], 
                                ],
                                stops: [0.25, 0.50, 0.75, 1],
                              ),
                            border: Border.all(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0), 
                            ),
                            child: Center(child: Text('English', style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                        ),
                     ),
                     Container(
                        margin: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0), 
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 75.0,
                            height: 32.5,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400], 
                                ],
                                stops: [0.25, 0.50, 0.75, 1],
                              ),
                            border: Border.all(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0), 
                            ),
                            child: Center(child: Text('History', style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                        ),
                     ),
                     Container(
                        margin: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0), 
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 75.0,
                            height: 32.5,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400], 
                                ],
                                stops: [0.25, 0.50, 0.75, 1],
                              ),
                            border: Border.all(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0), 
                            ),
                            child: Center(child: Text('Spanish', style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                        ),
                     ),
                     Container(
                        margin: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0), 
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 75.0,
                            height: 32.5,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400], 
                                ],
                                stops: [0.25, 0.50, 0.75, 1],
                              ),
                            border: Border.all(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0), 
                            ),
                            child: Center(child: Text('Biology', style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                        ),
                     ),
                    ],
                     ),
                     Row(
                       children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0), 
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 65.0,
                            height: 32.5,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400], 
                                ],
                                stops: [0.25, 0.50, 0.75, 1],
                              ),
                            border: Border.all(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0), 
                            ),
                            child: Center(child: Text('Latin', style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                        ),
                     ),
                     Container(
                        margin: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0), 
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 45.0,
                            height: 32.5,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400], 
                                ],
                                stops: [0.25, 0.50, 0.75, 1],
                              ),
                            border: Border.all(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0), 
                            ),
                            child: Center(child: Text('DT', style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                        ),
                     ),
                     Container(
                        margin: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0), 
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 75.0,
                            height: 32.5,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400], 
                                ],
                                stops: [0.25, 0.50, 0.75, 1],
                              ),
                            border: Border.all(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0), 
                            ),
                            child: Center(child: Text('French', style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                        ),
                     ),
                     Container(
                        margin: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0), 
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              
                            });
                          },
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 90.0,
                            height: 32.5,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400],
                                  Colors.orange[400], 
                                ],
                                stops: [0.25, 0.50, 0.75, 1],
                              ),
                            border: Border.all(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0), 
                            ),
                            child: Center(child: Text('Chemistry', style: TextStyle(fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                        ),
                     ),
                       ],
                     ),
                    ],
                     ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 8),
            Divider(),
            TextField(
            autofocus: false,
            onSubmitted: (val) {
              _addTodoItem(val);
              FocusScope.of(context).requestFocus(new FocusNode());
              // Navigator.pop(context); // Close the add todo screen
            },
            decoration: InputDecoration(
              hintText: 'Describe your homework...',
              contentPadding: EdgeInsets.all(16.0)
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(12.0, 3.0, 4.0, 40.0),
                child: IconButton(
                icon: Icon(
                  Icons.star,
                  color: Colors.grey[400],
                  size: 26.0,
                ),
                onPressed: () => [],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(4.0, 3.0, 4.0, 40.0),
                child: IconButton(
                icon: Icon(
                  Icons.cached,
                  color: Colors.grey[400],
                  size: 26.0,
                ),
                onPressed: () => [],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(4.0, 3.0, 4.0, 40.0),
                child: IconButton(
                icon: Icon(
                  Icons.calendar_view_day,
                  color: Colors.grey[400],
                  size: 26.0,
                ),
                onPressed: () => _selectDate(context),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(4.0, 3.0, 4.0, 40.0),
                child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.grey[400],
                  size: 26.0,
                ),
                onPressed: () => [],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(4.0, 3.0, 4.0, 40.0),
                child: IconButton(
                icon: Icon(
                  Icons.wrap_text,
                  color: Colors.grey[400],
                  size: 26.0,
                ),
                onPressed: () => [],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(65.0, 3.0, 12.0, 40.0),
                child: IconButton(
                icon: Icon(
                  Icons.done,
                  color: Colors.blue[700],
                  size: 26.0,
                ),
                onPressed: () {
                 setState(() {
                   _addTodoItem(context);
                   Navigator.pop(context);
                 });
                },
                // splashColor: Colors.blueGrey,
                ),
              ),
            ],
          ),
          ],
          ),
          ],
          );
      }
    );
}

void _removeTodoItem(int index) {
  setState(() => _todoItems.removeAt(index));
}

// Show an alert dialog asking the user to confirm that the task is done
void _promptRemoveTodoItem(int index) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text('Mark "${_todoItems[index]}" as done?'),
        actions: <Widget>[
          FlatButton(
            child: Text('CANCEL',
            style: TextStyle(
              color: Colors.orange[400],
              fontWeight: FontWeight.bold,
            ),
            ),
            onPressed: () => Navigator.of(context).pop()
          ),
          FlatButton(
            child: Text('MARK AS DONE',
            style: TextStyle(
              color: Colors.orange[400],
              fontWeight: FontWeight.bold,
            ),
            ),
            onPressed: () {
              _removeTodoItem(index);
              Navigator.of(context).pop();
            }
          )
        ]
      );
    }
  );
}

DateTime selectedDate = DateTime.now();

Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2019, 4),
        lastDate: DateTime(2030, 4));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });

}

Widget _buildTodoList() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('${selectedDate.toLocal()}').format(now);
  return Padding(
  padding: EdgeInsets.only(top: 70),
  child: ListView.builder(
    itemBuilder: (context, index) {
      if(index < _todoItems.length) {
        return ListTile(
          onLongPress: () => _promptRemoveTodoItem(index),
          title: Padding(
            padding: EdgeInsets.only(bottom: 7),
            child: Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAlias, //previously: antiAliasWithSaveLayer (changes for general performance benefits)
                child: Column(
                  children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 27.5, 0.0, 0.0),
                      child: Text("${_selectedSubjects[index]}", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                      ),
          ),
          Container(
                      margin: EdgeInsets.fromLTRB(23.5, 58.0, 0.0, 0.0),
                      child: Text("${_todoItems[index]}", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                      ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                      child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 6.5, 20.0, 0.0),
                      child: Text(formattedDate, 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.deepOrange[700],
                              ),
                      ),
                      ),
                      ),
          ],
        ),
        height: 100,
        width: 380,
        ),
        ],
        ),
        ),
        ),
        );
      }
    },
    ),
  );


  
}



/* @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: <Widget> [
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
      ListView.builder(
      itemCount: _currentHomeworks.length,
      // itemExtent: 50.0,
      itemBuilder: (buildContext, int index){
        
        String title = _currentHomeworks.toString();
        
        return ListTile(
          title: Container(
            margin: EdgeInsets.fromLTRB(15.0, 125.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                      Center(
                      child: Container(
                      // margin: EdgeInsets.fromLTRB(23.5, 27.5, 0.0, 0.0),
                      child: Text(title, 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                      ),
          ),
          ),
          ],
        ),
        height: 100,
        width: 380,
        ),
        ],
      ),
      ),
      ],
      ),
      ),
      );
      },
    ),
    ],
    ),
    );
  } */
}
        
        /* Stack(
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
        margin: EdgeInsets.fromLTRB(15.0, 125.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 27.5, 0.0, 0.0),
                      child: Text("Spanish", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                      ),
                      ),
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 58.0, 0.0, 0.0),
                      child: Text("Read chapter 1 of palabra book", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                      ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                      child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 6.5, 20.0, 0.0),
                      child: Text("TOMORROW", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.deepOrange[700],
                              ),
                      ),
                      ),
                      ),
                      ],
                  ),
                  height: 100,
                  width: 380,
                  ),
                  ],
                ),
              ),
   ],
  ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 245.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 27.5, 0.0, 0.0),
                      child: Text("English", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                      ),
                      ),
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 58.0, 0.0, 0.0),
                      child: Text("Read chapter 1 of palabra book", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                      ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                      child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 6.5, 20.0, 0.0),
                      child: Text("2 DAYS", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.deepOrange[700],
                              ),
                      ),
                      ),
                      ),
                      ],
                  ),
                  height: 100,
                  width: 380,
                  ),
                  ],
                ),
              ),
   ],
  ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 365.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 27.5, 0.0, 0.0),
                      child: Text("Maths", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                      ),
                      ),
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 58.0, 0.0, 0.0),
                      child: Text("Holiday sheet on quantum mechanics", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                      ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                      child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 6.5, 20.0, 0.0),
                      child: Text("3 DAYS", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.deepOrange[700],
                              ),
                      ),
                      ),
                      ),
                      ],
                  ),
                  height: 100,
                  width: 380,
                  ),
                  ],
                ),
              ),
   ],
  ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 485.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 27.5, 0.0, 0.0),
                      child: Text("Latin", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                      ),
                      ),
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 58.0, 0.0, 0.0),
                      child: Text("Aeneas and Dido arguments", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                      ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                      child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 6.5, 20.0, 0.0),
                      child: Text("12 DAYS", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.deepOrange[700],
                              ),
                      ),
                      ),
                      ),
                      ],
                  ),
                  height: 100,
                  width: 380,
                  ),
                  ],
                ),
              ),
   ],
  ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 605.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 27.5, 0.0, 0.0),
                      child: Text("History", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                      ),
                      ),
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 58.0, 0.0, 0.0),
                      child: Text("40 marker on Elon's achievments", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                      ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                      child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 6.5, 20.0, 0.0),
                      child: Text("21 DAYS", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.deepOrange[700],
                              ),
                      ),
                      ),
                      ),
                      ],
                  ),
                  height: 100,
                  width: 380,
                  ),
                  ],
                ),
              ),
   ],
  ),
      ), */
     /* Container(
        margin: EdgeInsets.fromLTRB(15.0, 725.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 27.5, 0.0, 0.0),
                      child: Text("Geography", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                      ),
                      ),
                      Container(
                      margin: EdgeInsets.fromLTRB(23.5, 58.0, 0.0, 0.0),
                      child: Text("Still remember those colouring pencils", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                      ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                      child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 6.5, 20.0, 0.0),
                      child: Text("2 MONTHS", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.deepOrange[700],
                              ),
                      ),
                      ),
                      ),
                      ],
                  ),
                  height: 100,
                  width: 380,
                  ),
                  ],
                ),
              ),
   ],
  ),
      ), */
      /* Container(
      margin: EdgeInsets.fromLTRB(0.0, 785.0, 0.0, 0.0),
       color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 16), 
                 child: TabBar(
              isScrollable: true,
              labelColor: Colors.white,
              labelPadding: EdgeInsets.fromLTRB(21, 0, 21, 16),
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.orange,
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
 } */