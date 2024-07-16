import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkmelo_app/config/colors.dart';
import 'package:inkmelo_app/presentations/screens/cart/body_cart.dart';
import 'package:inkmelo_app/repositories/cart_repository.dart';

import '../../../blocs/cart/cart_bloc.dart';
import '../home/back_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static const String routeName = '/cart-page';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const CartPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 100,
          leading: Container(
              margin: const EdgeInsets.only(left: 20),
              child: const MyBackbutton()),
          backgroundColor: primaryColor,
          toolbarHeight: 50,
          centerTitle: true,
          title: Text(
            'Cart',
            style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.white)),
          ),
        ),

        body: BlocProvider(
          create: (context) =>
              CartBloc(cartRepository: context.read<CartRepository>())..add(const LoadCart(userName: 'user1')),
          child: const BodyCart(),
        ),

      ),
    );
  }
}
