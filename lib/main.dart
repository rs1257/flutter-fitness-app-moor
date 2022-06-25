import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_app/widgets/future.dart';

import 'constants.dart' as Constants;
import 'database/database.dart';
import 'fragments/error_fragment.dart';
import 'fragments/workout_fragment.dart';
import 'widgets/nav_drawer.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {

  @override
  _AppState createState() => _AppState();

}

class _AppState extends State<MyApp> {
  int widgetIndex = 0;
  String title = "Dashboard";

  callback(newIndex) {
    setState(() {
      widgetIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget w = Scaffold(
        appBar: AppBar(
          title: Text(Constants.DRAWER_ITEMS[this.widgetIndex][0]),
        ),
        drawer: NavDrawer(widgetIndex, callback),
        body: _getDrawerItemWidget(this.widgetIndex)
      );
    return MultiProvider(
      providers: [
        Provider (
          create: (_) => MyDatabase().exerciseDao,
        ),
      ],
      child: 
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SpinnerFuture(w)
    ));
  }

  Widget _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Text('Dashboard');
      case 1:
        return WorkoutFragment();
      default:
        return ErrorFragment(Constants.ERROR_FRAGMENT_MESSAGE);
    }
  }
}
