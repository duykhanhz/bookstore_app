import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inkmelo_app/blocs/authentication/authentication_bloc.dart';
import 'package:inkmelo_app/blocs/book/book_bloc.dart';
import 'package:inkmelo_app/blocs/category/category_bloc.dart';
import 'package:inkmelo_app/presentations/screens/welcome/welcome_page.dart';
import 'package:inkmelo_app/repositories/authen_repository.dart';
import 'package:inkmelo_app/repositories/category_repository.dart';

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
