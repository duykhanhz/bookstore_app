

import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/models/genre_model.dart';

sealed class GenreState extends Equatable {
  const GenreState();
}

final class GenreInitial extends GenreState {
  @override
  List<Object?> get props => [];
}

final class GenreLoading extends GenreState {
  @override
  List<Object?> get props => [];
}

final class GenreLoaded extends GenreState {
  final List<GenreModel> genres;

  const GenreLoaded({required this.genres});

  @override
  List<Object?> get props => [genres];
}

final class GenreFailed extends GenreState {
  final String error;

  const GenreFailed({required this.error});

  @override
  List<Object?> get props => [error];
}
