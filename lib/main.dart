import 'package:flutter/material.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    const title = Text("Mobile Boilerplate");
    const body = Center(
        child: title
      );
    const home = Scaffold(body: body);

    const materialApp = MaterialApp(
      home: home,
      debugShowCheckedModeBanner: false,
    );

    return materialApp;
  }

}