import 'package:flutter/material.dart';

import 'AboutDashboard.dart';
import 'UserInfo.dart';


class MainSkeleton extends StatelessWidget {
  final Widget body;

  const MainSkeleton({Key key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        title: Text('Simplexportal dashboard example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            tooltip: 'Profile',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: body,
      drawer: MainDrawer(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Back', // used by assistive technologies
        child: Icon(Icons.arrow_back),
        onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
      ),);
  }

}

class MainDrawer extends StatelessWidget {

  const MainDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserInfo(),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Welcome 1'),
              onTap: () => Navigator.pushNamedAndRemoveUntil(context, "/welcome/1", (Route<dynamic> route) => route.settings.name == '/')
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Welcome 2'),
              onTap: () => Navigator.pushNamedAndRemoveUntil(context, "/welcome/2", (Route<dynamic> route) => route.settings.name == '/')
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            AboutDashboard()
          ],
        ),
      );
}







