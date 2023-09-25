import "package:flutter/material.dart";

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;


  @override
  Widget build(BuildContext context) {
    const title = Text("Counter Screen");
    var label = counter == 1 ? "Click" : "Clicks";

    var labelClick = Text(
      label,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w100,
        color: Color.fromARGB(123, 123, 0, 123)
      )
    );
    
    var totalClicks = Text(
      "$counter",
      style: const TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w100
      )
    ,);

    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        labelClick,
        totalClicks
      ],
    );

    void onPlusOneButton() {
      setState(() {
        counter++;
      });
    }

    void onMinusOneButton() {
      setState(() {
        counter--;
      });
    }
    
    const plusIconButton = Icon(Icons.plus_one);
    const minusIconButton = Icon(Icons.exposure_minus_1);

    var plusOneButton = FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPlusOneButton,
      child: plusIconButton,
    );
    var minusOneButton = FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onMinusOneButton,
      child: minusIconButton,
    );

    var appBar = AppBar(
      title: title,
      leading: IconButton(
        icon: const Icon(Icons.refresh_rounded),
        onPressed: () {
          setState(() {
            counter = 0;
          });
        },
      ),
      actions: [
        IconButton(
        icon: const Icon(Icons.upload_sharp),
        onPressed: () {
          setState(() {
            counter = 100;
          });
        },
      )],
    );
    var body = Center(child: column);

    var counterScreen = Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          plusOneButton,
          const SizedBox(height: 20),
          minusOneButton,
        ],
      ),
    );

    return counterScreen;
  }
}