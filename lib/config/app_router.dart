import 'package:flutter/material.dart';
import 'package:inkmelo_app/models/book_model.dart';
import 'package:inkmelo_app/presentations/screens/book_detail/book_detail_page.dart';
import 'package:inkmelo_app/presentations/screens/cart/cart_page.dart';
import 'package:inkmelo_app/presentations/screens/welcome/welcome_page.dart';

import '../presentations/screens/home/home_page.dart';
// import 'package:get/get.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WelcomePage.routeName:
        return WelcomePage.route();

      case HomePage.routeName:
        return HomePage.route();

      case BookDetailsPage.routeName:
        return BookDetailsPage.route(bookModel: settings.arguments as BookModel);

      case CartPage.routeName:
        return CartPage.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('Error'),
              ),
            ),
        settings: const RouteSettings(name: '/'));
  }
}
