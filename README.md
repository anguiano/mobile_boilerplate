# Mobile boilerplate
Mobile Boilerplate with Flutter


## Code rules

### Architecture of directories


### Variables

- Prefer don's use a `const` inside the boyd of widgets, better create a variable for each widget


### Example

```
import "package:flutter/material.dart";

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = Text("Counter Screen");
    const labelClick = Text("Total clicks");
    const totalClicks = Text("10");

    const column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        title,
        labelClick,
        totalClicks
      ],
    );

    const body = Center(child: column);

    const counterScreen = Scaffold(body: body);

    return counterScreen;
  }

}

```