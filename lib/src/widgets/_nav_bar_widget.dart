import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';

class SplitUpNavBar extends StatefulWidget {
  const SplitUpNavBar({Key? key}) : super(key: key);

  @override
  State<SplitUpNavBar> createState() => _SplitUpNavBarState();
}

class _SplitUpNavBarState extends State<SplitUpNavBar> {
  final _controller = PageController(viewportFraction: 0.2, initialPage: 1);

  final icons = [Icons.home, Icons.search, Icons.add];
  @override
  void initState() {
    super.initState();
    //to set the initial page to the middle one
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
    //add Vibration.vibrate(duration: 1000); at main page to test
    // _controller.
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        itemCount: kNavBarItemLength,
        onPageChanged: (index) {
          HapticFeedback.heavyImpact();
          context.read<NavBarCubit>().changeNavBarIndex(index);
        },
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        itemBuilder: (context, index) {
          return ListenableBuilder(
            listenable: _controller,
            builder: (context, child) {
              double factor = 1;
              if (_controller.position.hasContentDimensions) {
                factor = 1 - (_controller.page! - index).abs();
              }

              return InkWell(
                onTap: () {
                  _controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Icon(
                  icons[index],
                  size: (30 + 40 * factor).clamp(30.0, 70.0),
                  color: Colors.black,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
