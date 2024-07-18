import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inkmelo_app/blocs/authentication/authentication_bloc.dart';
import 'package:inkmelo_app/blocs/book/book_bloc.dart';
import 'package:inkmelo_app/blocs/book_item/book_item_bloc.dart';
import 'package:inkmelo_app/blocs/book_item/book_item_event.dart';
import 'package:inkmelo_app/blocs/bookpackage/book_package_bloc.dart';
import 'package:inkmelo_app/blocs/bookpackage/book_package_event.dart';
import 'package:inkmelo_app/blocs/cart/cart_bloc.dart';
import 'package:inkmelo_app/blocs/category/category_bloc.dart';
import 'package:inkmelo_app/blocs/genre/genre_bloc.dart';
import 'package:inkmelo_app/blocs/genre/genre_event.dart';
import 'package:inkmelo_app/blocs/shipment/shipment_event.dart';
import 'package:inkmelo_app/blocs/user/user_bloc.dart';
import 'package:inkmelo_app/blocs/user/user_event.dart';
import 'package:inkmelo_app/presentations/screens/welcome/welcome_page.dart';
import 'package:inkmelo_app/repositories/authen_repository.dart';
import 'package:inkmelo_app/repositories/book_item_repository.dart';
import 'package:inkmelo_app/repositories/book_package_repository.dart';
import 'package:inkmelo_app/repositories/cart_repository.dart';
import 'package:inkmelo_app/repositories/category_repository.dart';
import 'package:inkmelo_app/repositories/genre_repository.dart';
import 'package:inkmelo_app/repositories/shipment_repository.dart';
import 'package:inkmelo_app/repositories/user_repository.dart';

import 'blocs/shipment/shipment_bloc.dart';
import 'config/app_router.dart';
import 'repositories/book_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthenRepository(),
        ),
        RepositoryProvider(
          create: (context) => CategoryRepository(),
        ),
        RepositoryProvider(
          create: (context) => BookRepository(),
        ),
        RepositoryProvider(
          create: (context) => GenreRepository(),
        ),
        RepositoryProvider(
          create: (context) => BookItemRepository(),
        ),
        RepositoryProvider(
          create: (context) => CartRepository(),
        ),
        RepositoryProvider(
          create: (context) => ShipmentRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                CategoryBloc(categoryRepository: CategoryRepository())
                  ..add(LoadCategory()),
          ),
          BlocProvider(
            create: (context) =>
                BookBloc(bookRepository: BookRepository())..add(LoadBook()),
          ),
          BlocProvider(
            create: (context) =>
                AuthenticationBloc(authenRepository: AuthenRepository()),
          ),
          BlocProvider(
            create: (context) =>
                GenreBloc(genreRepository: GenreRepository())..add(LoadGenre()),
          ),
          BlocProvider(
            create: (context) =>
            BookItemBloc(bookItemRepository:  BookItemRepository())..add(LoadBookItem()),
          ),
          BlocProvider(
            create: (context) =>
            UserBloc(userRepository:  UserRepository())..add(LoadUser()),
          ),
          BlocProvider(
            create: (context) =>
            ShipmentBloc(shipmentRepository:  ShipmentRepository())..add(LoadShipment()),
          ),
          BlocProvider(
            create: (context) =>
            BookPackageBloc(bookPackageRepository:  BookPackageRepository())..add(LoadBookPackage()),
          ),
        ],
        child: MaterialApp(
          // navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'InkMelo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
          ),
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: WelcomePage.routeName,
        ),
      ),
    );
  }
}
