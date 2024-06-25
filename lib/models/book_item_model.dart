
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['bookId'] = bookId;
    data['bookTitle'] = bookTitle;
    data['bookCoverImg'] = bookCoverImg;
    data['type'] = type;
    data['source'] = source;
    data['duration'] = duration;
    data['createdAt'] = createdAt;
    data['lastUpdatedTime'] = lastUpdatedTime;
    data['lastChangedBy'] = lastChangedBy;
    data['status'] = status;
    return data;
  }

}
