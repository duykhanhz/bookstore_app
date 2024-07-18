import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/entities/book.dart';
import 'package:inkmelo_app/entities/book_item.dart';
import 'package:inkmelo_app/entities/genre.dart';

class BookPackage extends Equatable {
  final int id;
  final String title;
  final String description;
  final int price;
  final int modeId;
  final int stock;


const  BookPackage(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.modeId,
      required this.stock,
      });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, title, description, price, modeId, stock];
}
