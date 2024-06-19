import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final String description;
  final String createdAt;
  final String lastUpdatedTime;
  final String lastChangedBy;
  final String status;

  const Category(
      {required this.id,
        required this.name,
        required this.description,
        required this.createdAt,
        required this.lastUpdatedTime,
        required this.lastChangedBy,
        required this.status});

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    createdAt,
    lastUpdatedTime,
    lastChangedBy,
    status
  ];
}
