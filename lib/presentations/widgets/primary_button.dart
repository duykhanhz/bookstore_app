import 'package:flutter/material.dart';

import '../../config/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String btnName;
  final VoidCallback ontap;
  const PrimaryButton({super.key, required this.btnName, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
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
            Text(
              btnName,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.background,
                    letterSpacing: 2,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
