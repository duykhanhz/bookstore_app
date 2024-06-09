import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyInputTextField extends StatelessWidget {
  const MyInputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.background,
      ),
      child: Row(
        children: [
          SizedBox(width: 20,),
          SvgPicture.asset("assets/Icons/search.svg"),
          SizedBox(width: 15,),
          Expanded(child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search here . . .",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )
            ),
          ),
          )
        ],
      ),
    );
  }
}
