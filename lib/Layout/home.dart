import 'package:flutter/material.dart';
import 'package:news_app/shared/network/remote/api_manager.dart';

import '../model/source_respose.dart';

class Home extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Column(
              children: [
                Text("SomeThing went wrong"),
              ],
            );
          }
          if (snapshot.data?.status != "ok") {
            return Column(
              children: [
                Text("SomeThing went wrong"),
              ],
            );
          }
          List<Sources>? source = snapshot.data?.sources??[];
          return ListView.builder(itemBuilder:(context, index) {
            return Text(source[index].name??"");
          },itemCount: source.length, );
        },
        future: ApiManager.getResource(),
      ),
    );
  }
}
