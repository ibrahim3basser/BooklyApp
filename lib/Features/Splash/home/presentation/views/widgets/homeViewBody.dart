import 'package:booklyapp/Constants.dart';
import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:booklyapp/Core/utils/assets.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/BestSallerListViewItem.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/customAppBar.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/customListViewItem.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/featureBookListView.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50,),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
            ),
            const SizedBox(height: 20,),
            BestSallerListViewItem(),
        ]
      ),
    );
  }
}
