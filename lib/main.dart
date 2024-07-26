import 'package:counter_provider/Pages/Counter_page.dart';
import 'package:counter_provider/models/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// The entry point of the application.
void main() {
  runApp(MyApp());
}

/// The root widget of the application.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ChangeNotifierProvider is used to provide an instance of CounterModel
    // to the widget tree.
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MaterialApp(
        // The home property specifies the default route of the app,
        // which in this case is CounterScreen.
        home: CounterScreen(),
      ),
    );
  }
}
