

import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/models/shipment_model.dart';

sealed class ShipmentState extends Equatable {
  const ShipmentState();
}

final class ShipmentInitial extends ShipmentState {
  @override
  List<Object?> get props => [];
}

final class ShipmentLoading extends ShipmentState {
  @override
  List<Object?> get props => [];
}

final class ShipmentLoaded extends ShipmentState {
  final List<ShipmentModel> shipments;

  const ShipmentLoaded({required this.shipments});

  @override
  List<Object?> get props => [shipments];
}

final class ShipmentFailed extends ShipmentState {
  final String error;

  const ShipmentFailed({required this.error});

  @override
  List<Object?> get props => [error];
}