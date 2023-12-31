import "package:flutter/material.dart";
import "package:mobile_boilerplate/core/widgets/buttons/gc_button_widget.dart";
import "package:mobile_boilerplate/core/widgets/buttons/gc_icon_button_widget.dart";
import "dart:developer" as developer;


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

    void debug(param) {
      developer.log("debug::$param");
    }

    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        labelClick,
        totalClicks,
        GcButton("Click me", debug)
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

    void onRestartButton() {
      setState(() {
        counter = 0;
      });
    }

    void onBy100Button() {
      setState(() {
        counter += 100;
      });
    }
    
    var plusOneButton = GcIconButton(Icons.plus_one, onPlusOneButton);
    var minusOneButton = GcIconButton(Icons.exposure_minus_1, onMinusOneButton);
    var restartButton = GcIconButton(Icons.refresh_rounded, onRestartButton);
    
    var appBar = AppBar(
      title: title,
      leading: GcIconButton(Icons.refresh_rounded, onRestartButton, display: "none"),
      actions: [
        GcIconButton(Icons.upload_sharp, onBy100Button, display: "none"),
      ],
    );
    var body = Center(child: column);

    var counterScreen = Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          restartButton,
          const SizedBox(height: 20),
          plusOneButton,
          const SizedBox(height: 20),
          minusOneButton,
        ],
      ),
    );

    return counterScreen;
  }
}