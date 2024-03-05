import 'package:flutter/material.dart';
import 'package:split_up/src/screens/testing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.navigatorKey}) : super(key: key);
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page2(title: 'home'),
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
