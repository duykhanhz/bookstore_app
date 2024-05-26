import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Đây là nội dung của ứng dụng'),
      ),
      bottomNavigationBar: GNav(
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            iconSize: 16,
          ),
          GButton(
            icon: Icons.favorite_border,
            text: 'Like',
            iconSize: 16,
          ),
          GButton(
            icon: Icons.search,
            iconSize: 16,
            text: 'Search',
          ),
          GButton(
            icon: Icons.person,
            iconSize: 16,
            text: 'Person',
          ),
          GButton(
            icon: Icons.library_books,
            iconSize: 16,
            text: 'Library',
          ),
        ],
      ),
    );
  }
}
