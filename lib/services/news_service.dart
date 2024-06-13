import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=1ab3158a9205402797391e3d8b0eba7b&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      //Converting List of map to List of objects
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        if (article['urlToImage'] == null) {
          continue;
        }
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}



     //List<Map<String, dynamic>> articles = jsonData['results'] as List<Map<String, dynamic>>;
