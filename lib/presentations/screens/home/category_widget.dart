import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String btnName;
  const CategoryWidget({super.key, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:
                // ignore: deprecated_member_use
                Theme.of(context).colorScheme.background,
          ),
          child: Row(
            children: [
            
              Text(
                btnName,
                style: const TextStyle(color: Colors.black, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
