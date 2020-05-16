import 'package:co/home_trips.dart';
import 'package:co/profile_trips.dart';
import 'package:co/search_trips.dart';
import 'package:flutter/material.dart';

class PlatziTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StatePlatziTrips();
  }
}

class StatePlatziTrips extends State<PlatziTrips>{

  final List<Widget> widgetsChildren = [HomeTrips(), SearchTrips(), ProfileTrips()];

  var _indexCurrentPage = 0;

  void onTapTapped(int index){
    setState(() {
      _indexCurrentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[_indexCurrentPage],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.deepPurple
        ),
        child: BottomNavigationBar(
          currentIndex: _indexCurrentPage,
          onTap: onTapTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(""),

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("")
            )
          ],
        ),
      ),
    );
  }

}