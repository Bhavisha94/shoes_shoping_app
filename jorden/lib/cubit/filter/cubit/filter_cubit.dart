import 'package:flutter_bloc/flutter_bloc.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  sort(int index) {
    emit(SortFilter(index: index));
  }

  condition(int index) {
    emit(ConditionFilter(index: index));
  }

  gender(int index) {
    emit(GenderFilter(index: index));
  }

  brand(int index) {
    emit(BrandFilter(index: index));
  }

  category(int index) {
    emit(CategoryFilter(index: index));
  }

  color(int index) {
    emit(ColorFilter(index: index));
  }
}
