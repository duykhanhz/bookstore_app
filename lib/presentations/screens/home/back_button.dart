import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBackbutton extends StatelessWidget {
  const MyBackbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Row(
        children: [
          SvgPicture.asset("assets/Icons/back.svg"),
          Text(
            "Back",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.surface),
          )
        ],
      ),
    );
  }
}
