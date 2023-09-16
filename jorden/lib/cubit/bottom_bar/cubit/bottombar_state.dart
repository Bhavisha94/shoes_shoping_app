part of 'bottombar_cubit.dart';

abstract class BottombarState {}

class BottombarInitial extends BottombarState {}

class BottombarIndex extends BottombarState {
  final int index;
  BottombarIndex({required this.index});
}
