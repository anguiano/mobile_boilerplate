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

- Prefer don's use a `const` inside the boyd of widgets, better create a variable for each widget


### Example

```dart:
import "package:flutter/material.dart";

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = Text("Counter Screen");

    const labelClick = Text(
      "Total clicks",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w100
      )
    );
    
    const totalClicks = Text(
      "10",
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w100
      )
    ,);

    const column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        labelClick,
        totalClicks
      ],
    );

    // var counter = 0;
    
    const iconButton = Icon(Icons.plus_one);
    const actionButton = FloatingActionButton(
      onPressed: null,
      child: iconButton,
    );

    var appBar = AppBar(title: title);
    const body = Center(child: column);

    var counterScreen = Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: actionButton,
    );

    // onActionButton() {
    //   counter++;
    // }

    return counterScreen;
  }

}

```