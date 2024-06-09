import 'package:inkmelo_app/models/BookModel.dart';

var categoryData = [

  {
    "icon":"assets/Icons/heart.svg",
    "lebel":"Romance",
  },
  {
    "icon":"assets/Icons/plane.svg",
    "lebel":"Travel",
  },
  {
    "icon":"assets/Icons/world.svg",
    "lebel":"Documentary",
  },
  {
    "icon":"assets/Icons/heart.svg",
    "lebel":"Love Story",
  }

];

var bookData = [

  BookModel(
    id: "1",
    title: "1-2-3 Magic",
    description: "",
    aboutAuthor: "This is Thomas W.PheLan, PhD",
    audioLen: "20",
    author: "Thomas W.PheLan, PhD",
    bookUrl:"assets/images/1-2-3 Magic.jpg",
    rating: "4.2",
    category: "Documentary",
    numberOfRating: 10,
    price: 100,
  ),
BookModel(
    id: "2",
    title: "Living in the light",
    description: "",
    aboutAuthor: "This is Shakti Gawain",
    audioLen: "20",
    author: "Shakti Gawain",
    bookUrl:"assets/images/Living in the light.jpg",
    rating: "3.2",
    category: "Documentary",
    numberOfRating: 110,
    price: 120,
  ),
BookModel(
    id: "3",
    title: "Resisting Happiness",
    description: "",
    aboutAuthor: "This is Matthew Kelly",
    audioLen: "20",
    author: "Matthew Kelly",
    bookUrl:"assets/images/Resisting Happiness.jpg",
    rating: "4.5",
    category: "Documentary",
  numberOfRating: 102,
    price: 220,
  ),
  BookModel(
    id: "4",
    title: "The Choice",
    description: "",
    aboutAuthor: "This is  Edith Eger",
    audioLen: "20",
    author: " Edith Eger",
    bookUrl:"assets/images/The Choice.jpg",
    rating: "4.8",
    category: "Documentary",
    numberOfRating: 123,
    price: 220,
  )

];