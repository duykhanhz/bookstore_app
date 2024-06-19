import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/repositories/category_repository.dart';

import '../../models/category_model.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository categoryRepository;
  CategoryBloc({required this.categoryRepository}) : super(CategoryInitial()) {
     on<LoadCategory>(_onLoadCategories);
  }

  Future<void> _onLoadCategories(
      LoadCategory event, Emitter<CategoryState> emit) async {
    emit(CategoryLoading());
    try {
      var apiResponse = await categoryRepository.fecthCategory();
      if (apiResponse != null) {
        emit(CategoryLoaded(categories: apiResponse));
      } else {
        emit(const CategoryFailed(error: 'Failed!'));
      }
    } catch (e) {
      emit(CategoryFailed(error: e.toString()));
    }
  }
}
