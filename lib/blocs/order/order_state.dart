


import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/entities/order.dart';

sealed class OrderState extends Equatable {
  const OrderState();
}

final class OrderInitial extends OrderState {
  @override
  List<Object?> get props => [];
}

final class OrderLoading extends OrderState {
  @override
  List<Object?> get props => [];
}

final class OrderLoaded extends OrderState {
  final List<Order> orders;

  const OrderLoaded({required this.orders});

  @override
  List<Object?> get props => [orders];
}

final class OrderFailed extends OrderState {
  final String error;

  const OrderFailed({required this.error});

  @override
  List<Object?> get props => [error];
}
