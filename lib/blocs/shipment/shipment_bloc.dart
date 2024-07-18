



import 'package:bloc/bloc.dart';
import 'package:inkmelo_app/blocs/shipment/shipment_event.dart';
import 'package:inkmelo_app/blocs/shipment/shipment_state.dart';
import 'package:inkmelo_app/repositories/shipment_repository.dart';

class ShipmentBloc extends Bloc<ShipmentEvent, ShipmentState> {
  final ShipmentRepository shipmentRepository;
  ShipmentBloc({required this.shipmentRepository}) : super(ShipmentInitial()) {
    on<LoadShipment>(_onLoadShipment);
  }

  Future<void> _onLoadShipment(
      LoadShipment event, Emitter<ShipmentState> emit) async {
    emit(ShipmentLoading());
    try {
      var apiResponse = await shipmentRepository.fetchShipment();
      if (apiResponse != null) {
        emit(ShipmentLoaded(shipments: apiResponse));
      } else {
        emit(const ShipmentFailed(error: 'Failed!'));
      }
    } catch (e) {
      emit(ShipmentFailed(error: e.toString()));
    }
  }
}