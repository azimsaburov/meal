import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal/filter/ui/filter_screen.dart';

class FilterCubit extends Cubit<Map<Filter, bool>>{
  FilterCubit(super.filters);

  void updateFilters(Map<Filter, bool> newFilters){
    emit(newFilters);
  }

  @override
  void onChange(Change<Map<Filter, bool>> change) {
    print(change);
    super.onChange(change);
  }

}