part of 'cart_bloc.dart';

sealed class CartState extends Equatable {
  const CartState();
}

final class CartInitial extends CartState {
  @override
  List<Object?> get props => [];
}

final class CartLoading extends CartState {
  @override
  List<Object?> get props => [];
}

final class CartLoaded extends CartState {
  final List<CartDetail> cartDetails;

  const CartLoaded({required this.cartDetails});

  @override
  List<Object?> get props => [cartDetails];
}

final class AddToCartSuccess extends CartState {
  @override
  List<Object?> get props => [];
}

final class CartFailed extends CartState {
  final String error;

  const CartFailed({required this.error});

  @override
  List<Object?> get props => [error];
}
