import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/web_view.dart';


class NewsTile extends StatelessWidget {
  NewsTile({super.key, required this.articleModel});
  final customCacheManager = CacheManager(
    Config(
      'customCacheKey',
      stalePeriod: const Duration(days: 7),
      maxNrOfCacheObjects: 100,
    ),
  );
  
  
  final ArticleModel articleModel;
  
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articleModel.image == null
              ? const Placeholder(
                  fallbackHeight: 200.0,
                  fallbackWidth: 200.0,
                )
              : GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WebView(
                          articleModel: articleModel,
                        ),
                      ),
                    );
                  },
                  child: CachedNetworkImage(
                    cacheManager: customCacheManager,
                    imageUrl: articleModel.image ?? "https://btckstorage.blob.core.windows.net/site10666/News.jpg",
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fadeInDuration: const Duration(milliseconds: 500),
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.black87, fontSize: 15, fontWeight: FontWeight.w500),
        ),
         const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? "There's no subtitle",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
