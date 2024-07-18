import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkmelo_app/config/colors.dart';
import 'package:inkmelo_app/models/cart_detail_model.dart';

import '../../../blocs/cart/cart_bloc.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
    required this.book,
  });


  final CartDetail book;

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<CartBloc>(context).add(LoadCartEvent());
    return Container(
      constraints:const BoxConstraints(maxHeight: 120  ),
      margin: const EdgeInsets.only(bottom: 2  ),
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Color(0x0c000000),
            offset: Offset(0  , 0  ),
            blurRadius: 5  )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(5  ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  book.bookCoverImg,
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      'assets/images/boundraries.jpg',
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8  ,
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:const EdgeInsets.only(top: 5  ),
                  child: Text(book.bookTitle,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.openSans(
                          textStyle:const TextStyle(
                            fontSize: 15  ,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ))),
                ),
                Text(book.bookAuthor,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.openSans(
                        textStyle:const TextStyle(
                          fontSize: 14  ,
                          color: kLowTextColor,
                          fontWeight: FontWeight.normal,
                        ))),
                Row(
                  children: [
                    Text(
                      '${book.bookPackagePrice}',
                      style: GoogleFonts.openSans(
                          textStyle:const TextStyle(
                            fontSize: 16  ,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(
                      width: 5  ,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5  ,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding:const EdgeInsets.only(right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 10  ,
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: FloatingActionButton(
                        onPressed: () {
                          // context
                          //     .read<CartBloc>()
                          //     .add(RemoveAllProduct(product: product));
                        },
                        heroTag: 'Removeall',
                        elevation: 0,
                        backgroundColor: Colors.white,
                        foregroundColor: primaryColor,
                        child:const Center(
                            child: Text(
                              'x',
                              style: TextStyle(fontSize: 15),
                            ))),
                  ),
                  const SizedBox(
                    height: 25  ,
                  ),
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return  Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 20  ,
                            height: 20  ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: primaryColor)),
                            child: FloatingActionButton(
                                heroTag: 'remove',
                                elevation: 0,
                                backgroundColor: Colors.white,
                                foregroundColor: primaryColor,
                                child: const Icon(
                                  Icons.remove,
                                  size: 15,
                                ),
                                onPressed: () {
                                  // context
                                  //     .read<CartBloc>()
                                  //     .add(RemoveProduct(product: product));
                                }),
                          ),
                          const SizedBox(
                            width: 5  ,
                          ),
                          SizedBox(
                            width: 20  ,
                            child: Center(
                              child: Text(
                                '${book.quantity}',
                                style:const TextStyle(
                                  fontFamily: 'Solway',
                                  fontSize: 13  ,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5  ,
                          ),
                          Container(
                            width: 20  ,
                            height: 20  ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: primaryColor)),
                            child: FloatingActionButton(
                                heroTag: 'add',
                                elevation: 0,
                                foregroundColor: Colors.white,
                                backgroundColor: primaryColor,
                                child: const Icon(
                                  Icons.add,
                                  size: 15,
                                ),
                                onPressed: () {

                                  // context
                                  //     .read<CartBloc>()
                                  //     .add(AddOneProduct(product: product));
                                }),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}