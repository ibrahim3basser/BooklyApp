import 'package:booklyapp/Constants.dart';
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

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
           Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}