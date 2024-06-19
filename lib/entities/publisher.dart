import 'package:equatable/equatable.dart';

class Publisher extends Equatable {
  final int id;
  final String name;
  final String description;
  final String logoImg;
  final String createdAt;
  final String lastUpdatedTime;
  final String lastChangedBy;
  final String status;

  const Publisher(
      {required this.id,
        required this.name,
        required this.description,
        required this.logoImg,
        required this.createdAt,
        required this.lastUpdatedTime,
        required this.lastChangedBy,
        required this.status});

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    logoImg,
    createdAt,
    lastUpdatedTime,
    lastChangedBy,
    status
  ];
}
