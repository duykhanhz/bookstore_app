import 'package:inkmelo_app/entities/book.dart';
import 'package:inkmelo_app/models/genre_model.dart';
import 'package:inkmelo_app/models/publisher_model.dart';
import 'package:inkmelo_app/models/rating_model.dart';

class BookModel extends Book {
  final List<GenreModel> genres;
  final List<RatingModel> ratings;
  final PublisherModel publisher;
  const BookModel(
      {required super.id,
      required super.title,
      required super.iSBN,
      required super.publicationDecisionNumber,
      required super.publicationRegistConfirmNum,
      required super.depositCopy,
      required super.author,
      required super.description,
      required super.bookCoverImg,
      required super.averageStar,
      required super.totalRating,
      required super.createdAt,
      required super.lastUpdatedTime,
      required super.lastChangedBy,
      required super.status,
      required this.genres,
      required this.publisher,
      required this.ratings});

  factory BookModel.fromJson(Map<String, dynamic> json) {
    var publisher = PublisherModel.fromJson(json['publisher']);
    var ratings = (json['ratings'] as List<dynamic>)
        .map((e) => RatingModel.fromJson(e as Map<String, dynamic>))
        .toList();
    var genres = (json['genres'] as List<dynamic>)
        .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return BookModel(
      id: json['id'],
      title: json['title'] ?? '',
      iSBN: json['ISBN'] ?? '',
      publicationDecisionNumber: json['publicationDecisionNumber'] ?? '',
      publicationRegistConfirmNum: json['publicationRegistConfirmNum'] ?? '',
      depositCopy: json['depositCopy'] ?? '',
      author: json['author'] ?? '',
      description: json['description'] ?? '',
      bookCoverImg: json['bookCoverImg'] ?? '',
      averageStar: json['averageStar'] ?? '',
      totalRating: json['totalRating'] ?? '',
      publisher: publisher,
      ratings: ratings,
      genres: genres,
      createdAt: json['createdAt'] ?? '',
      lastUpdatedTime: json['lastUpdatedTime'] ?? '',
      lastChangedBy: json['lastChangedBy'] ?? '',
      status: json['status'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['ISBN'] = iSBN;
    data['publicationDecisionNumber'] = publicationDecisionNumber;
    data['publicationRegistConfirmNum'] = publicationRegistConfirmNum;
    data['depositCopy'] = depositCopy;
    data['author'] = author;
    data['description'] = description;
    data['bookCoverImg'] = bookCoverImg;
    data['averageStar'] = averageStar;
    data['totalRating'] = totalRating;
    data['publisher'] = publisher.toJson();
    data['ratings'] = ratings.map((v) => v.toJson()).toList();
    data['genres'] = genres.map((v) => v.toJson()).toList();
    data['createdAt'] = createdAt;
    data['lastUpdatedTime'] = lastUpdatedTime;
    data['lastChangedBy'] = lastChangedBy;
    data['status'] = status;
    return data;
  }
}
