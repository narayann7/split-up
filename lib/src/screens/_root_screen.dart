import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scaffold(
          body: Center(child: Text("hello world!")),
        ),
        SplitUpNavBar()
      ],
    );
  }
}
