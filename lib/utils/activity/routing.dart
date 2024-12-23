import 'package:flutter/material.dart';

class AppRoutes {
  // Navigate to a new page (push)
  static void push(BuildContext context, Widget page) {
    Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
    );
  }

  // Navigate to a new page and replace the current one (pushReplacement)
  static void pushReplacement(BuildContext context, Widget page) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Navigate to a new page and clear the stack (pushAndRemoveUntil)
  static void pushAndRemoveUntil(BuildContext context, Widget page) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
          (route) => false, // Clears all previous routes
    );
  }

  // Navigate back to the previous page (pop)
  static void pop(BuildContext context) {
    Navigator.of(context).pop();
  }

  // Navigate back and pass a result
  static void popWithResult(BuildContext context, dynamic result) {
    Navigator.of(context).pop(result);
  }

  // Navigate to a named route
  static void pushNamed(BuildContext context, String routeName, {Object? arguments}) {
    Navigator.of(context).pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  // Replace with a named route
  static void pushReplacementNamed(BuildContext context, String routeName, {Object? arguments}) {
    Navigator.of(context).pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }
}
