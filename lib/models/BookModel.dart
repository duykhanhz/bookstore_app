/// id : ""
/// title : "Give and Take"
/// description : ""
/// rating : "3.4"
/// pages : 234
/// language : "ENG"
/// audioLen : "20"
/// author : "Nitish Roy"
/// aboutAuthor : ""
/// bookUrl : ""
/// audioUrl : ""
/// category : ""
/// price : 23
/// numberOfRating : 232

class BookModel {
  BookModel({
    this.id,
    this.title,
    this.description,
    this.rating,
    this.pages,
    this.language,
    this.audioLen,
    this.author,
    this.aboutAuthor,
    this.bookUrl,
    this.audioUrl,
    this.category,
    this.price,
    this.numberOfRating,
  });

  BookModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    rating = json['rating'];
    pages = json['pages'];
    language = json['language'];
    audioLen = json['audioLen'];
    author = json['author'];
    aboutAuthor = json['aboutAuthor'];
    bookUrl = json['bookUrl'];
    audioUrl = json['audioUrl'];
    category = json['category'];
    price = json['price'];
    numberOfRating = json['numberOfRating'];
  }

  String? id;
  String? title;
  String? description;
  String? rating;
  num? pages;
  String? language;
  String? audioLen;
  String? author;
  String? aboutAuthor;
  String? bookUrl;
  String? audioUrl;
  String? category;
  num? price;
  num? numberOfRating;

  BookModel copyWith({
    String? id,
    String? title,
    String? description,
    String? rating,
    num? pages,
    String? language,
    String? audioLen,
    String? author,
    String? aboutAuthor,
    String? bookUrl,
    String? audioUrl,
    String? category,
    num? price,
    num? numberOfRating,
  }) {
    return BookModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      rating: rating ?? this.rating,
      pages: pages ?? this.pages,
      language: language ?? this.language,
      audioLen: audioLen ?? this.audioLen,
      author: author ?? this.author,
      aboutAuthor: aboutAuthor ?? this.aboutAuthor,
      bookUrl: bookUrl ?? this.bookUrl,
      audioUrl: audioUrl ?? this.audioUrl,
      category: category ?? this.category,
      price: price ?? this.price,
      numberOfRating: numberOfRating ?? this.numberOfRating,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['description'] = description;
    map['rating'] = rating;
    map['pages'] = pages;
    map['language'] = language;
    map['audioLen'] = audioLen;
    map['author'] = author;
    map['aboutAuthor'] = aboutAuthor;
    map['bookUrl'] = bookUrl;
    map['audioUrl'] = audioUrl;
    map['category'] = category;
    map['price'] = price;
    map['numberOfRating'] = numberOfRating;
    return map;
  }
}