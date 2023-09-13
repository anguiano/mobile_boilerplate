import 'package:flutter/material.dart';
import 'package:mobile_boilerplate/modules/counter/screens/counter_screen.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    const title = Text("Mobile Boilerplate");
    const body = Center(child: title);
    
    const home = Scaffold(body: body);
    const counterScreen = CounterScreen();

    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.lightBlue
      ),
      home: counterScreen,
    );

    return materialApp;
  }

}