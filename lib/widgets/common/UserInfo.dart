import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text("Angel Cervera Claudio"),
      accountEmail: Text("angelcervera@silyan.com"),
      currentAccountPicture: CircleAvatar(
        child: Text(
          "A",
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}