import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inkmelo_app/config/colors.dart';

import '../../../models/book_model.dart';
import '../home/back_button.dart';

class BookDetailsHeader extends StatelessWidget {
  const BookDetailsHeader({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const MyBackbutton(),
            SvgPicture.asset(
              "assets/Icons/heart.svg",
              color: Theme.of(context).colorScheme.surface,
            ),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/boundraries.jpg",
                width: 170,
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        Text(
          bookModel.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                // ignore: deprecated_member_use
                color: Theme.of(context).colorScheme.background,
              ),
        ),
        Text("Author: ${bookModel.author}",
            style: const TextStyle(color: kLowTextColor, fontSize: 15)),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text(
                  "Rating",
                  style: TextStyle(
                    color: kLowTextColor,
                    fontSize: 13
                  )
                ),
                Text(
                 '${bookModel.averageStar}',
                  style:const TextStyle(
                    color: kLowTextColor,
                    fontSize: 13
                  )
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  "Pages",
                  style: TextStyle(
                    color: kLowTextColor,
                    fontSize: 13
                  )
                ),
                Text(
                  '203',
                  style: TextStyle(
                    color: kLowTextColor,
                    fontSize: 13
                  )
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  "Language",
                  style: TextStyle(
                    color: kLowTextColor,
                    fontSize: 13
                  )
                ),
                Text(
                  "ENG",
                  style: TextStyle(
                    color: kLowTextColor,
                    fontSize: 13
                  )
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  "Audio",
                  style: TextStyle(
                    color: kLowTextColor,
                    fontSize: 13
                  )
                ),
                Text(
                  "2 hr",
                  style: TextStyle(
                    color: kLowTextColor,
                    fontSize: 13
                  )
                ),
                
              ],
            ),
          ],
        )
      ],
    );
  }
}
