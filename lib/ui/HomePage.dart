import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vatansoft_demo/ui/Adisyon.dart';
import 'package:vatansoft_demo/ui/Create.dart';
import 'package:vatansoft_demo/ui/RandevuIslem.dart';
import 'package:vatansoft_demo/ui/RandevuTablo.dart';
import 'package:vatansoft_demo/ui/Settings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  var clr = Colors.black45;
  var clrSelect = Colors.indigo;

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
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.apps_outlined),
                color: currentIndex == 0 ? clrSelect : clr,
                onPressed: () {
                  _onItemTapped(0);
                },
              ),
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.calendar_today_outlined),
                color: currentIndex == 1 ? clrSelect : clr,
                onPressed: () {
                  _onItemTapped(1);
                },
              ),
              SizedBox(
                height: 65,
                width: 65,
                  child: Container(
                    alignment: Alignment(0,-5),
                    child: FloatingActionButton(
                      child: Container(
                        height: 65,
                        width: 65,
                        child: Icon(
                          Icons.add,color: Colors.white,size: 35,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(53, 41, 154, 1),
                            Color.fromRGBO(236, 3, 144, 1)
                          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: Border.all(color: Colors.white, width: 4,style: BorderStyle.solid),

                        ),
                      ),
                      onPressed: () {
                        _onItemTapped(null);
                      },
                    ),
                  ),
              ),
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.edit_road_outlined),
                color: currentIndex == 2 ? clrSelect : clr,
                onPressed: () {
                  _onItemTapped(2);
                },
              ),
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.more_horiz),
                color: currentIndex == 3 ? clrSelect : clr,
                onPressed: () {
                  _onItemTapped(3);
                },
              )
            ],
          ),
        ),
      ),
      body:goToPage(),
    );
  }

  goToPage() {
    if(currentIndex == null)
      return Create();
    if(currentIndex == 0)
      return RandevuIslem(context);
    if(currentIndex == 1)
      return RandevuTablo();
    if(currentIndex == 2)
      return Adisyon(context);
    if(currentIndex == 3)
      return Settings();


  }
}
