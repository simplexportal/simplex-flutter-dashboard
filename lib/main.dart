import 'package:flutter/material.dart';
import 'package:simplex_flutter_dashboard/widgets/common/MainSkeleton.dart';

void main() => runApp(DashboardApp());

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
          title: 'Dashboard',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.blue
          ),
          routes: {
            '/': (context) =>
                MainSkeleton(body: Center(child: Text('Home'))),
            '/welcome/1': (context) =>
                MainSkeleton(body: Center(child: Text('Welcome 1!'))),
            '/welcome/2': (context) =>
                MainSkeleton(body: Center(child: Text('Welcome 2!'))),
          });
}
