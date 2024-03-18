import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/BookDetailsSection.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/SimilarBooksSection.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(),
                  Expanded(
                      child: SizedBox(
                    height: 35,
                  )),
                  SimilarBooksSection(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
