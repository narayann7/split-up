import 'package:flutter_bloc/flutter_bloc.dart';

const kNavBarItemLength = 3;

class NavBarCubit extends Cubit<int> {
  NavBarCubit() : super(1);
  int get currentIndex => state;

  void changeNavBarIndex(int index) {
    if (index < 0 || index >= kNavBarItemLength) return;
    emit(index);
  }
}
