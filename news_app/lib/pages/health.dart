import 'package:flutter/material.dart';
import 'package:news_app/components/customListTitle.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/api_service2.dart';

class OtomotifPage extends StatefulWidget {
  @override
  _OtomotifPageState createState() => _OtomotifPageState();
}

class _OtomotifPageState extends State<OtomotifPage> {
  ApiService2 client = ApiService2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Health News", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue.shade800),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
