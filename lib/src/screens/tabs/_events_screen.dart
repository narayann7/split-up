import 'package:flutter/material.dart';
import 'package:split_up/src/screens/testing.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key, required this.navigatorKey}) : super(key: key);
  final GlobalKey? navigatorKey;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    //Page2
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page2(title: 'event'),
                      ),
                    );
                  },
                  child: const Text('Pop'),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
