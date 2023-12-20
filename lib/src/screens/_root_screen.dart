import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';
import '../widgets/widgets.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SplitUpNavBar(),
      body: BlocBuilder<NavBarCubit, int>(
        builder: (context, state) {
          return Center(child: Text(state.toString()));
        },
      ),
    );
  }
}
