import 'package:flutter/material.dart';

class AboutDashboard extends StatelessWidget {
  const AboutDashboard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutListTile(
      icon: Icon(Icons.info),
      applicationIcon: FlutterLogo(),
      applicationName: 'Dashboard example',
      applicationVersion: 'November 2020',
      applicationLegalese: '\u{a9} 2020 Simplexportal Ltd',
      // aboutBoxChildren: aboutBoxChildren,
    );
  }
}