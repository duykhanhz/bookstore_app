import 'package:inkmelo_app/entities/book_package.dart';
import 'package:inkmelo_app/models/book_item_model.dart';
import 'package:inkmelo_app/models/book_model.dart';

import 'genre_model.dart';

class BookPackageModel extends BookPackage {
  final BookModel book;
  final List<BookItemModel> items;
  final List<GenreModel> category;

const   BookPackageModel(
      {required super.id,
      required super.title,
      required super.description,
      required super.price,
      required super.modeId,
      required super.stock,
      required this.book,
      required this.items,
      required this.category});

  factory BookPackageModel.fromJson(Map<String, dynamic> json) {
    var book = BookModel.fromJson(json['book']);
    var items = (json['items'] as List<dynamic>)
        .map((e) => BookItemModel.fromJson(e as Map<String, dynamic>))
        .toList();
    var category = (json['category'] as List<dynamic>)
        .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return BookPackageModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      modeId: json['modeId'],
      stock: json['stock'],
      items: items,
      book: book,
      category: category,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['price'] = price;
    data['modeId'] = modeId;
    data['stock'] = stock;
    data['book'] = book.toJson();
    data['items'] = items.map((v) => v.toJson()).toList();
    data['category'] = category.map((v) => v.toJson()).toList();
    return data;
  }
}
