part of 'cart_bloc.dart';

sealed class CartEvent extends Equatable {
  const CartEvent();
}

final class LoadCart extends CartEvent {
  final String userName;

  const LoadCart({required this.userName});
  @override
  List<Object?> get props => [userName];
}

final class AddToCart extends CartEvent {
  final int bookPackageId;
  final String userName;
  final int quantity;

  const AddToCart(
      {required this.bookPackageId,
      required this.userName,
      required this.quantity});

  @override
  List<Object?> get props => [bookPackageId, userName, quantity];
}
