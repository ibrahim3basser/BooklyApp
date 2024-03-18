import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/widgets/BestSallerListViewItem.dart';
import 'package:booklyapp/Features/Splash/search/presentation/Views/widgets/CustomSearchTextField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 16,),
          Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
          SizedBox(height: 16,),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BooksListViewItem(),
        );
      },
    );
  }
}