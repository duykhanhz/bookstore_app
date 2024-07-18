// import 'package:inkmelo_app/entities/order.dart';
// import 'package:inkmelo_app/repositories/order_service_repository.dart';
//  // Import OrderService
//
// class OrderRepository {
//   final OrderService _orderService = OrderService();
//
//   Future<List<Order>?> fetchOrders({
//     int page = 0,
//     int size = 5,
//     String fromDate = '2024-01-01',
//     String toDate = '2024-12-24',
//   }) async {
//     try {
//       return await _orderService.fetchOrders(
//         page: page,
//         size: size,
//         fromDate: fromDate,
//         toDate: toDate,
//       );
//     } catch (e) {
//       print('Error fetching orders: $e');
//       return null;
//     }
//   }
// }