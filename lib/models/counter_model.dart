import 'package:flutter/foundation.dart';

/// A simple counter model that extends ChangeNotifier.
/// This class holds the counter state and notifies listeners
/// whenever the state changes.
class CounterModel with ChangeNotifier {
  // Private field to store the count value.
  int _count = 0;

  // Getter to retrieve the current count value.
  int get count => _count;

  /// Method to increment the count value.
  /// This method updates the count and notifies listeners about the change.
  void increment() {
    _count++;
    notifyListeners(); // Notify all listeners that the state has changed.
  }

  /// Method to decrement the count value.
  /// This method updates the count and notifies listeners about the change.
  void decrement() {
    _count--;
    notifyListeners(); // Notify all listeners that the state has changed.
  }
}
