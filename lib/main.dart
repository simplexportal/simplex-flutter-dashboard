import 'package:flutter/material.dart';
import 'package:simplex_flutter_dashboard/views/common/MainSkeleton.dart';

void main() {
  runApp(MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MainSkeleton(body: Center(child: Text('Hello word 1!'))),
        '/welcome/1': (context) => MainSkeleton(body: Center(child: Text('Welcome 1!'))),
        '/welcome/2': (context) => MainSkeleton(body: Center(child: Text('Welcome 2!'))),
      }));
}
