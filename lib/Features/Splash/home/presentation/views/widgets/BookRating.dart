
import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.center});

  final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(width: 6.3,),
        const Text('4.8',style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Opacity(
          opacity: .5,
          child: Text('(254)',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),)),
      ],
    );
  }
}