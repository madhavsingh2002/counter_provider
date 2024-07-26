import 'package:counter_provider/models/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// A stateless widget that displays and updates the counter using the Provider package.
class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the CounterModel from the provider.
    final counter = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Display the current count value.
            Text(
              '${counter.count}',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Button to decrement the counter.
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: counter.decrement,
                ),
                // Button to increment the counter.
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: counter.increment,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
