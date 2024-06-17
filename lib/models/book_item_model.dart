import 'package:inkmelo_app/models/book_model.dart';

import '../entities/book_item.dart';

class BookItemModel extends BookItem {
  const BookItemModel(
      {required super.id,
      required super.bookId,
      required super.bookTitle,
      required super.bookCoverImg,
      required super.type,
      required super.source,
      required super.duration,
      required super.createdAt,
      required super.lastUpdatedTime,
      required super.lastChangedBy,
      required super.status});

  factory BookItemModel.fromJson(Map<String, dynamic> json) {
    return BookItemModel(
        id: json['id'],
        bookId: json['bookId'],
        bookTitle: json['bookTitle'],
        bookCoverImg: json['bookCoverImg'],
        type: json['type'],
        source: json['source'],
        duration: json['duration'],
        createdAt: json['createdAt'],
        lastUpdatedTime: json['lastUpdatedTime'],
        lastChangedBy: json['lastChangedBy'],
        status: json['status']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['bookId'] = this.bookId;
    data['bookTitle'] = this.bookTitle;
    data['bookCoverImg'] = this.bookCoverImg;
    data['type'] = this.type;
    data['source'] = this.source;
    data['duration'] = this.duration;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedTime'] = this.lastUpdatedTime;
    data['lastChangedBy'] = this.lastChangedBy;
    data['status'] = this.status;
    return data;
  }

}
