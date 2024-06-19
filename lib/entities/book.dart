import 'package:equatable/equatable.dart';

class Book extends Equatable {
  final int id;
  final String title;
  final String iSBN;
  final String publicationDecisionNumber;
  final String publicationRegistConfirmNum;
  final String depositCopy;
  final String author;
  final String description;
  final String bookCoverImg;
  final double averageStar;
  final int totalRating;
  final String createdAt;
  final String lastUpdatedTime;
  final String lastChangedBy;
  final String status;

  const Book(
      {required this.id,
        required this.title,
        required this.iSBN,
        required this.publicationDecisionNumber,
        required this.publicationRegistConfirmNum,
        required this.depositCopy,
        required this.author,
        required this.description,
        required this.bookCoverImg,
        required this.averageStar,
        required this.totalRating,
        required this.createdAt,
        required this.lastUpdatedTime,
        required this.lastChangedBy,
        required this.status});

  @override
  List<Object?> get props => [
    id,
    title,
    iSBN,
    publicationDecisionNumber,
    publicationRegistConfirmNum,
    depositCopy,
    author,
    description,
    bookCoverImg,
    averageStar,
    totalRating,
    createdAt,
    lastUpdatedTime,
    lastChangedBy,
    status
  ];
}