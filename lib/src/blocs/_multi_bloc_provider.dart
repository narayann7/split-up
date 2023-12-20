import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubits/cubits.dart';

class BlocInit extends StatelessWidget {
  BlocInit({Key? key, required this.child}) : super(key: key);
  final Widget child;

  final _navBarCubit = BlocProvider<NavBarCubit>(
    create: (context) => NavBarCubit(),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        _navBarCubit,
      ],
      child: child,
    );
  }
}
