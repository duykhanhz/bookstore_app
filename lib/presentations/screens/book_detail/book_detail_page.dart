import 'package:flutter/material.dart';

import 'package:inkmelo_app/config/Colors.dart';

import '../../../models/book_model.dart';
import 'book_action_btn.dart';
import 'header_widget.dart';

// ignore: must_be_immutable
class BookDetailsPage extends StatelessWidget {
  BookDetailsPage({super.key, required this.bookModel});
  static const String routeName = '/book-details-page';

  static Route route({required BookModel bookModel}) {
    return MaterialPageRoute(
      builder: (_) => BookDetailsPage(bookModel: bookModel,),
      settings: const RouteSettings(name: routeName),
    );
  }

  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: BookDetailsHeader(bookModel: bookModel,),
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
                  const BookActionBtn(
                    bookUrl: '',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
