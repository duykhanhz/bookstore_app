import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkmelo_app/config/colors.dart';
import 'package:inkmelo_app/presentations/screens/cart/cart_card.dart';

import '../../../blocs/cart/cart_bloc.dart';

class BodyCart extends StatelessWidget {
  const BodyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Expanded(
          flex: 8,
          child: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state is CartLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: primaryColor,
                  ),
                );
              } else if (state is CartLoaded) {
                if (state.cartDetails.isEmpty) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'No books in cart',
                                  style: GoogleFonts.openSans(
                                      textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(
                                  context,
                                );
                              },
                              child: Container(
                                  width: 180,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: primaryColor, width: 2),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Text(
                                      'Checkout',
                                      style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: primaryColor)),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  final cart = state.cartDetails;

                  return ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CartProductCard(
                            book: cart[index],
                          ),
                        ],
                      );
                    },
                  );
                }
              }
              return const Center(
                child: CircularProgressIndicator(
                  color: primaryColor,
                ),
              );
            },
          ),
        ),
        Expanded(
            flex: 1,
            child: BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                if (state is CartLoading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: primaryColor,
                    ),
                  );
                } else if (state is CartLoaded) {
                  if (state.cartDetails.isEmpty) {
                    return Container(
                      color: primaryColor,
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Row(
                          //   children: [
                          //     Text(
                          //       'Total: ',
                          //       style: GoogleFonts.openSans(
                          //           textStyle: const TextStyle(
                          //               fontSize: 15,
                          //               fontWeight: FontWeight.bold,
                          //               color: Colors.white)),
                          //     ),
                          //     Row(
                          //       children: [
                          //         Text(
                          //           'total',
                          //           style: GoogleFonts.openSans(
                          //               textStyle: const TextStyle(
                          //             fontSize: 20,
                          //             color: Colors.red,
                          //             fontWeight: FontWeight.bold,
                          //           )),
                          //         ),
                          //       ],
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    );
                  } else {
                    final cart = state.cartDetails;
                    return Container(
                      color: primaryColor,
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Row(
                          //   children: [
                          //     Text(
                          //       'Total: ',
                          //       style: GoogleFonts.openSans(
                          //           textStyle: const TextStyle(
                          //               fontSize: 15,
                          //               fontWeight: FontWeight.bold,
                          //               color: Colors.white)),
                          //     ),
                          //     Row(
                          //       children: [
                          //         Text(
                          //           'total',
                          //           style: GoogleFonts.openSans(
                          //               textStyle: const TextStyle(
                          //             fontSize: 20,
                          //             color: Colors.red,
                          //             fontWeight: FontWeight.bold,
                          //           )),
                          //         ),
                          //       ],
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    );
                  }
                }
                return Container();
              },
            )),
      ],
    );
  }
}