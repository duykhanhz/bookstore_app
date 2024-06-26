import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/models/cart_detail_model.dart';
import 'package:inkmelo_app/repositories/cart_repository.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository;

  CartBloc({required this.cartRepository}) : super(CartInitial()) {
    on<LoadCart>(_onLoadCart);
    on<AddToCart>(_onAddToCart);
  }

  Future<void> _onLoadCart(LoadCart event, Emitter<CartState> emit) async {
    emit(CartLoading());
    try {
      var apiResponse =
          await cartRepository.fecthCartDetailByUserName(event.userName);
      if (apiResponse != null) {
        emit(CartLoaded(cartDetails: apiResponse));
      } else {
        emit(const CartFailed(error: 'Failed!'));
      }
    } catch (e) {
      emit(CartFailed(error: e.toString()));
    }
  }

  Future<void> _onAddToCart(AddToCart event, Emitter<CartState> emit) async {
    try {
      var apiResponse = await cartRepository.postAddToCart(
          event.bookPackageId, event.userName, event.quantity);
      if (apiResponse != null) {
        emit(AddToCartSuccess());
      } else {
        emit(const CartFailed(error: 'Add to cart failed!'));
      }
    } catch (e) {
      emit(CartFailed(error: e.toString()));
    }
  }
}
