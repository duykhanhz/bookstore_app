

import 'package:equatable/equatable.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();
}

final class LoadUser extends UserEvent {
  @override
  List<Object?> get props => [];
}

