import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottombar_state.dart';

class BottombarCubit extends Cubit<BottombarState> {
  BottombarCubit() : super(BottombarInitial());

  change(int index) {
    emit(BottombarIndex(index: index));
  }
}
