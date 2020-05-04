import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habittracker/components/routine_card.dart';
import 'package:habittracker/components/routine_filter.dart';
import 'package:habittracker/components/routine_week.dart';
import 'package:habittracker/models/habit.dart';
import 'package:habittracker/page/routines_page.dart';

import 'models/routine_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routine Tracker',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Streakes!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController _ctr;

  @override
  void initState() {
    super.initState();
    _ctr = TabController(length: 3, vsync: this);
  }

  _tabBarView() {
    return AnimatedBuilder(
      animation: _ctr.animation,
      builder: (BuildContext context, snapshot) {
        return Transform.translate(
          offset: Offset.zero,
          child: [
            RoutinesPage(),
            Container(),
            Container(),
          ][_ctr.animation.value.round()],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: _tabBarView(),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 2.0)
          ]
        ),
        child: SizedBox(
          height: 65,
          child: TabBar(
            controller: this._ctr,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.black.withOpacity(0.3),
            tabs: [
              Tab(icon: Icon(Icons.refresh), child: Text("루틴"), iconMargin: EdgeInsets.all(5),),
              Tab(icon: Icon(Icons.play_circle_outline), child: Text("루틴 시작"), iconMargin: EdgeInsets.all(5),),
              Tab(icon: Icon(Icons.show_chart), child: Text("분석"), iconMargin: EdgeInsets.all(5),),
            ]
          ),
        ),
      ),
    );
  }
}
