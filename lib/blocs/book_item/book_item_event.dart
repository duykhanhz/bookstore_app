


import 'package:equatable/equatable.dart';

sealed class BookItemEvent extends Equatable {
  const BookItemEvent();
}

final class LoadBookItem extends BookItemEvent {
  @override
  List<Object?> get props => [];
}
