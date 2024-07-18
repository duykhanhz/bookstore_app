

import 'package:equatable/equatable.dart';

sealed class ShipmentEvent extends Equatable {
  const ShipmentEvent();
}

final class LoadShipment extends ShipmentEvent {
  @override
  List<Object?> get props => [];
}
