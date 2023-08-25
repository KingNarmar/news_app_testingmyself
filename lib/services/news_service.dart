import 'package:dio/dio.dart';
import 'package:news_app_testingmyself/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  getGeneralNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=87a804f0b6514d0db93b3bc6bae85c4e&category=entertainment&country=eg");
    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData["articles"];
    List<ArticleModel> articleModel = [];
    for (var article in articles) {
      ArticleModel model = ArticleModel(
        image: article["urlToImage"] ?? "",
        title: article["title"] ?? "",
        subTitle: article["description"] ?? "",
      );
      articleModel.add(model);
    }
  }
}
