import 'package:equatable/equatable.dart';

class CartDetail extends Equatable {
  final String bookTitle;
  final String bookAuthor;
  final String bookCoverImg;
  final String bookPackageTitle;
  final String bookPackageDescription;
  final double bookPackagePrice;
  final int bookPackageStock;
  final int quantity;
  final String lastUpdatedTime;

  const CartDetail(
      {required this.bookTitle,
      required this.bookAuthor,
      required this.bookCoverImg,
      required this.bookPackageTitle,
      required this.bookPackageDescription,
      required this.bookPackagePrice,
      required this.bookPackageStock,
      required this.quantity,
      required this.lastUpdatedTime});

  factory CartDetail.fromJson(Map<String, dynamic> json) {
    return CartDetail(
      bookTitle: json['bookTitle'],
      bookAuthor: json['bookAuthor'],
      bookCoverImg: json['bookCoverImg'],
      bookPackageTitle: json['bookPackageTitle'],
      bookPackageDescription: json['bookPackageDescription'],
      bookPackagePrice: json['bookPackagePrice'],
      bookPackageStock: json['bookPackageStock'],
      quantity: json['quantity'],
      lastUpdatedTime: json['lastUpdatedTime'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bookTitle'] = bookTitle;
    data['bookAuthor'] = bookAuthor;
    data['bookCoverImg'] = bookCoverImg;
    data['bookPackageTitle'] = bookPackageTitle;
    data['bookPackageDescription'] = bookPackageDescription;
    data['bookPackagePrice'] = bookPackagePrice;
    data['bookPackageStock'] = bookPackageStock;
    data['quantity'] = quantity;
    data['lastUpdatedTime'] = lastUpdatedTime;
    return data;
  }

  @override
  List<Object?> get props => [
        bookTitle,
        bookAuthor,
        bookCoverImg,
        bookPackageTitle,
        bookPackageDescription,
        bookPackagePrice,
        bookPackageStock,
        quantity,
        lastUpdatedTime
      ];
}
