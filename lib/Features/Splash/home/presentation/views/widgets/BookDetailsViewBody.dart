import 'package:booklyapp/Constants.dart';
import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:booklyapp/Core/utils/assets.dart';
import 'package:booklyapp/Core/utils/widget/CustomButton.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/BookRating.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/BooksAction.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/CustomBookImage.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/SimilarBooksListView.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width *.2),
              child: const CustomBookImage(),
            ),
            const SizedBox(height: 25,),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6,),
            Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500,)
              ),
            ),
            const SizedBox(height: 16,),
            const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
            const SizedBox(height: 30,),
            const BooksAction(),
            const Expanded(child: SizedBox(height: 35,)),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w600,
                ),),
            ),
            const SizedBox(height: 16,),
            const SimilarBooksListView(),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    ),
        ),
      ],
    );
  }
}