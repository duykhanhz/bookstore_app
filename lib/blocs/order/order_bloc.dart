import 'package:bloc/bloc.dart';
import 'package:inkmelo_app/blocs/order/order_event.dart';
import 'package:inkmelo_app/blocs/order/order_state.dart';
import 'package:inkmelo_app/repositories/order_service_repository.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderServiceRepository orderRepository;
  OrderBloc({required this.orderRepository}) : super(OrderInitial()) {
    on<LoadOrder>(_onLoadOrders);
  }

  @override
  Future<void> _onLoadOrders(
      LoadOrder event, Emitter<OrderState> emit) async {
    emit(OrderLoading());
    try {
      var apiResponse = await orderRepository.fetchOrders();
      if (apiResponse != null) {
    //    emit(OrderLoaded(orders: apiResponse));
      } else {
        emit(const OrderFailed(error: 'Failed!'));
      }
    } catch (e) {
      emit(OrderFailed(error: e.toString()));
    }
    }
  }