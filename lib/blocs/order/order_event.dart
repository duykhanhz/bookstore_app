import 'package:equatable/equatable.dart';

sealed class OrderEvent extends Equatable {
  const OrderEvent();
}

final class LoadOrder extends OrderEvent {
  @override
  List<Object?> get props => [];
}