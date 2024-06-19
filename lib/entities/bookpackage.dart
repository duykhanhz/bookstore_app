import 'package:equatable/equatable.dart';

class BookPackage extends Equatable {
  final int id;
  final String title;
  final String description;
  final double price;
  final int mode;
  final String createdAt;
  final String lastUpdatedTime;
  final String lastChangedBy;
  final String status;

  const BookPackage(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.mode,
      required this.createdAt,
      required this.lastUpdatedTime,
      required this.lastChangedBy,
      required this.status});

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        description,
        price,
        mode,
        createdAt,
        lastUpdatedTime,
        lastChangedBy,
        status
      ];
}
