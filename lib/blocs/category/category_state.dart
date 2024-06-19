part of 'category_bloc.dart';

sealed class CategoryState extends Equatable {
  const CategoryState();
}

final class CategoryInitial extends CategoryState {
  @override
  List<Object?> get props => [];
}

final class CategoryLoading extends CategoryState {
  @override
  List<Object?> get props => [];
}

final class CategoryLoaded extends CategoryState {
  final List<CategoryModel> categories;

  const CategoryLoaded({required this.categories});

  @override
  List<Object?> get props => [categories];
}

final class CategoryFailed extends CategoryState {
  final String error;

  const CategoryFailed({required this.error});

  @override
  List<Object?> get props => [error];
}
