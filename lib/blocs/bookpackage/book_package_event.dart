

import 'package:equatable/equatable.dart';

sealed class BookPackageEvent extends Equatable {
  const BookPackageEvent();

  @override
  List<Object?> get props => [];
}

class LoadBookPackage extends BookPackageEvent {}