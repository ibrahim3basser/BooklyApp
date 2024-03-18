import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBookDetailsAppBar(),
      ],
    );
  }
}
