import 'package:flutter/material.dart';

class SplitUpNavBar extends StatefulWidget {
  const SplitUpNavBar({Key? key}) : super(key: key);

  @override
  State<SplitUpNavBar> createState() => _SplitUpNavBarState();
}

class _SplitUpNavBarState extends State<SplitUpNavBar> {
  final PageController _controller = PageController(viewportFraction: 0.2);

  final icons = [
    Icons.home,
    Icons.search,
    Icons.add,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: 100, // Card Height
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        itemCount: icons.length,
        controller: _controller,
        itemBuilder: (context, index) {
          return ListenableBuilder(
            listenable: _controller,
            builder: (context, child) {
              double factor = 1;
              if (_controller.position.hasContentDimensions) {
                factor = 1 - (_controller.page! - index).abs();
              }
              //icons
              print('logx$factor');
              return Icon(
                icons[index],
                size: (30 + 40 * factor).clamp(30.0, 70.0),
                color: Colors.black,
              );
            },
          );
        },
      ),
    );
  }
}
