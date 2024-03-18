import 'package:booklyapp/Constants.dart';
import 'package:booklyapp/Core/utils/AppRouter.dart';
import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:booklyapp/Core/utils/assets.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/BookRating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
          aspectRatio: 2.5/4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetData.book1),)
            ),
          ),
          ),
          const SizedBox(width: 30,),
             Expanded(
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                      ),
                  ),
                  const SizedBox(height: 3,),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                    ),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text(
                        r'19.99 $',
                        style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const Spacer(),
                        const BookRating(),
                    ],
                  ),
                ],
                         ),
             )
          ],
        ),
      ),
    );
  }
}
