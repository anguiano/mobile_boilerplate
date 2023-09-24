# Mobile boilerplate
Mobile Boilerplate with Flutter


## Code rules

### Architecture of directories

- core
  - widgets

- modules
  - screens
  - widgets


### Variables

- Prefer don't use a `const` inside of the widgets, better create a variable for each widget


### Example

```dart:
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

    const labelClick = Text(
      "Total clicks",
      style: TextStyle(
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

    void onActionButton() {
      setState(() {
        counter++;
      });
    }
    
    const iconButton = Icon(Icons.plus_one);
    var actionButton = FloatingActionButton(
      onPressed: onActionButton,
      child: iconButton,
    );

    var appBar = AppBar(title: title);
    var body = Center(child: column);

    var counterScreen = Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: actionButton,
    );

    return counterScreen;
  }
}
```