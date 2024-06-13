import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class WebView extends StatelessWidget {
  const WebView({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: WebViewController()
          ..setNavigationDelegate(NavigationDelegate())
          ..loadRequest(Uri.parse(articleModel.url)),
      ),
    );
  }
}
