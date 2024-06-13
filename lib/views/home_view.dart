import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_listview.dart';
import 'package:news_app/widgets/news_listview_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                    color: Color.fromARGB(255, 149, 29, 20), fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            // To scroll Categories LV with News LV
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListViewBuilder(category: 'general',),
            ],
          ),
        ));
  }
}


