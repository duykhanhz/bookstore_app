import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:inkmelo_app/config/Colors.dart';
import 'package:inkmelo_app/presentations/screens/cart/cart_page.dart';
import 'package:inkmelo_app/presentations/widgets/primary_button.dart';
import 'package:inkmelo_app/repositories/cart_repository.dart';

import '../../../blocs/cart/cart_bloc.dart';
import '../../../models/book_model.dart';
import 'book_action_btn.dart';
import 'header_widget.dart';

// ignore: must_be_immutable
class BookDetailsPage extends StatelessWidget {
  BookDetailsPage({super.key, required this.bookModel});
  static const String routeName = '/book-details-page';

  static Route route({required BookModel bookModel}) {
    return MaterialPageRoute(
      builder: (_) => BookDetailsPage(
        bookModel: bookModel,
      ),
      settings: const RouteSettings(name: routeName),
    );
  }

  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc(cartRepository: context.read<CartRepository>()),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                // height: 500,
                color: primaryColor,
                child: Row(
                  children: [
                    Expanded(
                      child: BookDetailsHeader(
                        bookModel: bookModel,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "About book",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            bookModel.description,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          "Publication Decision Number",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            bookModel.publicationDecisionNumber,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CartPage.routeName);
                          // context.read<CartBloc>().add(AddToCart(bookPackageId: bookModel., userName: userName, quantity: quantity))
                        },
                        child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width - 100,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.shopping_bag_rounded,
                                color: Colors.white,

                              ),
                              const SizedBox(
                                width: 10,

                              ),
                              Text(
                                'Add to cart',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                  color:
                                  Theme.of(context).colorScheme.surface,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}