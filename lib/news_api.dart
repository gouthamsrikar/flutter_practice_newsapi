import 'dart:convert';
import 'package:http/http.dart';
import 'package:newsapi/models/news.dart';

class ApiService {
  final endPointUrl = "https://hubblesite.org/api/v3/news";

  Future<List<News>> getArticle() async {
    Response res = await get(Uri.parse(endPointUrl));

    if (res.statusCode == 200) {
      var data = jsonDecode(res.body);
      List<News> info = [];
      for (var i in data) {
        News infonew = News(name: i['name'], url: 'url', userid: i['news_id']);
        info.add(infonew);
      }

      return info;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
