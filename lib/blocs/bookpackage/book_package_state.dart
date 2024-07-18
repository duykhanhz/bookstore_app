import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/models/book_package_model.dart';

sealed class BookPackageState extends Equatable {
  const BookPackageState();

  @override
  List<Object?> get props => [];
}

class BookPackageInitial extends BookPackageState {}

class BookPackageLoading extends BookPackageState {}

class BookPackageLoaded extends BookPackageState {
  final List<BookPackageModel> bookpackage;

  const BookPackageLoaded({required this.bookpackage});

  @override
  List<Object?> get props => [bookpackage];
}

class BookPackageFailed extends BookPackageState {
  final String error;

  const BookPackageFailed({required this.error});

  @override
  List<Object?> get props => [error];
}