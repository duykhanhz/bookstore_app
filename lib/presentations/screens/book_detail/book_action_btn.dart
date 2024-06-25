import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookActionBtn extends StatelessWidget {
  final String bookUrl;
  const BookActionBtn({super.key, required this.bookUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/Icons/book.svg"),
              const SizedBox(width: 10),
              Text(
                "READ BOOK",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
          Container(
            width: 3,
            height: 30,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Row(
            children: [
              SvgPicture.asset("assets/images/play.svg"),
              const SizedBox(width: 10),
              Text(
                "PLAY BOOK",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}