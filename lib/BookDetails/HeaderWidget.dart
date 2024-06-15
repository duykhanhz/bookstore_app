import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inkmelo_app/components/BackButton.dart';

class BookDetailsHeader extends StatelessWidget {
  const BookDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyBackbutton(),
            SvgPicture.asset(
              "assets/Icons/heart.svg",
              color: Theme.of(context).colorScheme.background,
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/Give and Take.jpg",
                width: 170,
              ),
            )
          ],
        ),
        SizedBox(height: 30),
        Text(
          "Beach Town: Apocalypse",
          style:
          Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        Text(
          "Author: Ni30 Roy",
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          "Publishing and graphic design, Lorem ipsum is a placeholder text commonly",
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Rating",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .background,
                  ),
                ),
                Text(
                  "4.7",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .background,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Pages",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .background,
                  ),
                ),
                Text(
                  "203",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .background,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Language",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .background,
                  ),
                ),
                Text(
                  "ENG",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .background,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Audio",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .background,
                  ),
                ),
                Text(
                  "2 hr",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .background,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
