import 'package:flutter/material.dart';
import 'package:login_pages/src/config/routes/routes_path.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: RoutesPath.routes,
      
    );
  }
}
