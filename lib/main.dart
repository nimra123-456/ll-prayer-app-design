import 'package:flutter/material.dart';



import 'screens/home_screen.dart';
import 'screens/splashScreen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     
     
        home: SplashScreen()
  
     );
  }
}
