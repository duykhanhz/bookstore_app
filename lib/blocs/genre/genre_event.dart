import 'package:equatable/equatable.dart';


sealed class GenreEvent extends Equatable {
  const GenreEvent();
}

final class LoadGenre extends GenreEvent {
  @override
  List<Object?> get props => [];
}