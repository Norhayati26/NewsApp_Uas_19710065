import 'package:flutter/material.dart';
import 'package:news_app/components/customListTitle.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/api_service.dart';


class SportPage extends StatefulWidget {
  @override
  _SportPageState createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  ApiService client = ApiService();
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        title: Text("Sport News", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade800),
    body: FutureBuilder(
      future: client.getArticle(),
      builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot)
    { 
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
