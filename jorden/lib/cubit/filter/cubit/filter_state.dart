part of 'filter_cubit.dart';

abstract class FilterState {}

class FilterInitial extends FilterState {}

class SortFilter extends FilterState {
  final int index;
  SortFilter({required this.index});
}

class ConditionFilter extends FilterState {
  final int index;
  ConditionFilter({required this.index});
}

class GenderFilter extends FilterState {
  final int index;
  GenderFilter({required this.index});
}

class BrandFilter extends FilterState {
  final int index;
  BrandFilter({required this.index});
}

class CategoryFilter extends FilterState {
  final int index;
  CategoryFilter({required this.index});
}

class ColorFilter extends FilterState {
  final int index;
  ColorFilter({required this.index});
}
