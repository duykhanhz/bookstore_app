import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inkmelo_app/HomePage/Widgets/AppBar.dart';
import 'package:inkmelo_app/HomePage/Widgets/CategoryWidget.dart';
import 'package:inkmelo_app/HomePage/Widgets/MyInputTextField.dart';
import 'package:inkmelo_app/components/BookCard.dart';
import 'package:inkmelo_app/components/BookTitle.dart';
import 'package:inkmelo_app/config/Colors.dart';
import 'package:inkmelo_app/models/Data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).colorScheme.primary,
              height: 370,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  HomeAppBar(),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Good Morning❤️",
                        style: Theme.of(context).textTheme
                            .bodyLarge
                            ?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .background
                      ),
                      ),
                      Text("Khang",
                        style: Theme.of(context).textTheme
                            .headlineMedium
                            ?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .background
                        ),),
                    ],
                  ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Flexible(
                      child: Text("Time to read book and enhance your knowledge",
                        style: Theme.of(context).textTheme
                            .labelSmall
                            ?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .background
                        ),)),
        
                ],
              ),
                  SizedBox(height: 20,),
                  MyInputTextField(),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Topics", style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .background,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categoryData.map((e) => CategoryWidget(
                          iconPath: e["icon"]!, btnName: e["lebel"]!)).toList(),
        
        
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(children: [
                    Text("Trending",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bookData.map((e) => BookCard(
                        title: e.title!,
                        bookUrl: e.bookUrl!,
                        ontap: () {},
                      )).toList(),
        
                    ),
                  ),
                  Row(children: [
                    Text("Your Interests",
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                      children: bookData.map((e) => BookTitle(
                          title: e.title!,
                          bookUrl: e.bookUrl!,
                          author: e.author!,
                          price: e.price!.toInt(),
                          rating: e.rating!,
                          totalRating: e.numberOfRating!.toInt()))
                          .toList()
                  )
                ],
              ),
            )
        
          ],
        ),
      ),
    );
  }
}
