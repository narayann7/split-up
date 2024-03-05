import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:split_up/src/screens/tabs/_events_screen.dart';
import 'package:split_up/src/screens/tabs/_home_screen.dart';
import 'package:split_up/src/screens/tabs/_setting_screen.dart';

import '../blocs/blocs.dart';
import '../widgets/widgets.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final Map<int, GlobalKey> _navigatorKeys = {
    0: GlobalKey(),
    1: GlobalKey(),
    2: GlobalKey(),
  };
  bool _canPop = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SplitUpNavBar(),
      body: SafeArea(
        child: BlocBuilder<NavBarCubit, int>(
          builder: (context, state) {
            return PopScope(
              canPop: _canPop,
              onPopInvoked: (didPop) async {
                _canPop = !await Navigator.maybePop(
                  _navigatorKeys[state]!.currentState!.context,
                );

                setState(() {});
              },
              child: IndexedStack(
                index: state,
                children: [
                  EventScreen(navigatorKey: _navigatorKeys[0]),
                  HomeScreen(navigatorKey: _navigatorKeys[1]),
                  SettingScreen(navigatorKey: _navigatorKeys[2]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
