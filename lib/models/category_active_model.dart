import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/entities/category.dart';

class ActiveCategoryModel extends Category {
  final bool isActive;

  const ActiveCategoryModel({
    required super.id,
    required super.name,
    required super.description,
    required this.isActive,
    required super.createdAt,
    required super.lastUpdatedTime,
    required super.lastChangedBy,
    required super.status,
  });

  @override
  List<Object?> get props => [
        super.id,
        super.name,
        super.description,
        this.isActive,
        super.createdAt,
        super.lastUpdatedTime,
        super.lastChangedBy,
        super.status,
      ];
}
