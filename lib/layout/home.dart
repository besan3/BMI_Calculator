import 'package:flutter/material.dart';
import 'package:massenger_app/moduels/archivedTaskes/archivedTaskes.dart';
import 'package:massenger_app/moduels/newTaskes/newTaskes.dart';

import '../moduels/doneTaskes/doneTaskes.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
 int _currentIndex=0;
  List<Widget> Screens=[
    NewTaskes(),
    DoneTaskes(),
    ArchivedTaskes(),
  ];
  List<String> Titels=[
    'Taskes',
    'Done Taskes',
    'Archived Taskes'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:Text( Titels[_currentIndex]),
      ),
      body: Screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu),
          label: 'Taskes',
          ),  BottomNavigationBarItem(icon:  Icon(Icons.check_circle_outline),
            label: 'Done',
          ),  BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),
            label: 'Archived',
          ),
        ],currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
    );
  }
}
