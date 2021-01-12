import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vatansoft_demo/ui/Adisyon.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  var clr = Colors.black45;
  var clrSelect = Colors.deepPurple;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
            // elevation: 20.0,
            shape: CircularNotchedRectangle(),
              child: Container(
                height: 75,
                alignment: Alignment(0,-30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      iconSize: 30.0,
                      icon: Icon(Icons.apps_outlined),
                      color: currentIndex == 0 ?clrSelect :clr,
                      onPressed: () {
                        _onItemTapped(0);
                      },
                    ),
                    IconButton(
                      iconSize: 30.0,
                      icon: Icon(Icons.calendar_today_outlined),
                      color: currentIndex == 1 ?clrSelect :clr,
                      onPressed: () {
                        _onItemTapped(1);
                      },
                    ),
                    Container(
                      child: IconButton(
                        alignment: Alignment.center,
                        iconSize:50.0,
                        icon: Icon(Icons.add,color: Colors.white,),
                        onPressed: () {
                          _onItemTapped(null);
                        },
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(53, 41, 154, 1),
                            Color.fromRGBO(236, 3, 144, 1)
                          ],begin: Alignment.topCenter, end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(1000)),
                          border: Border.all(color: Colors.white,width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                      ),

                    ),
                    IconButton(
                      iconSize: 30.0,
                      icon: Icon(Icons.edit_road_outlined),
                      color: currentIndex == 2 ?clrSelect :clr,
                      onPressed: () {
                        _onItemTapped(2);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Adisyon()));
                      },
                    ),
                    IconButton(
                      iconSize: 30.0,
                      icon: Icon(Icons.more_horiz),
                      color: currentIndex == 3 ?clrSelect :clr,
                      onPressed: () {
                        _onItemTapped(3);
                      },
                    )
                  ],
                ),
              ),
            ));
  }
}
