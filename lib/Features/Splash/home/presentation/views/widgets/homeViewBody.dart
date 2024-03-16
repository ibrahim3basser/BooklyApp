import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:booklyapp/Core/utils/assets.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/customAppBar.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/customListViewItem.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/featureBookListView.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50,),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
            ),
        ]
      ),
    );
  }
}
