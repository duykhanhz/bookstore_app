import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/colors.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/images/dashboard.svg"),

        Text(
          "Ink-Mello",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            // ignore: deprecated_member_use
            color: Theme.of(context).colorScheme.background,

          ),
        ),

        CircleAvatar(
          // ignore: deprecated_member_use
          backgroundColor: Theme.of(context).colorScheme.background,
          child: const Text(
            "K",
            style: TextStyle(
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
