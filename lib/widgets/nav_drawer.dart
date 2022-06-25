import 'package:flutter/material.dart';

import '../constants.dart' as Constants;

class NavDrawer extends StatelessWidget {
  final int widgetIndex;
  final Function(int) callback;

  NavDrawer(this.widgetIndex, this.callback);

  @override
  Widget build(BuildContext context) {
    var drawerItems = Constants.DRAWER_ITEMS;
    final List<Widget> drawerOptions = <Widget>[];
    drawerOptions.add(
      DrawerHeader(
        child: Text(Constants.DRAWER_HEADER_TITLE),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
    );
    for (int i = 0; i < drawerItems.length; i++) {
      drawerOptions.add(ListTile(
        title: Text(drawerItems[i][0]),
        leading: Icon(drawerItems[i][1]),
        selected: i == this.widgetIndex,
        onTap: () => _onSelectItem(context, i),
      ));
    }

    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: drawerOptions),
    );
  }

  void _onSelectItem(BuildContext c, int index) {
    this.callback(index);
    Navigator.of(c).pop(); // close the drawer
  }
}
