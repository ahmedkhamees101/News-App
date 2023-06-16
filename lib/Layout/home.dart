import 'package:flutter/material.dart';
import 'package:news_app/screens/widget/tab_screen.dart';
import 'package:news_app/shared/network/remote/api_manager.dart';

import '../model/source_respose.dart';
import '../style/app_color.dart';

class Home extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        toolbarHeight: 70,
             elevation: 0,
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(25) ,bottomRight:Radius.circular(25) )
        ),
        title: Text("News App"),
        centerTitle: true,
        backgroundColor: AppColors.primaryGreen,
      ),
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
          return TabScreen(source);
        },
        future: ApiManager.getResource(),
      ),
    );
  }
}
