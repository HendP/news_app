import 'package:flutter/cupertino.dart';
import 'package:news_app/data/model/article.dart';
import 'package:news_app/ui/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/platform_widget.dart';

class NewsListPage extends StatefulWidget {
  static const routeName = '/article_list';

  @override
  State<NewsListPage> createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  int bottomNavIndex = 0;



  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}

