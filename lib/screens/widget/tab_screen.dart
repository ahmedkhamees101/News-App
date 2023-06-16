import 'package:flutter/material.dart';
import 'package:news_app/model/source_respose.dart';
import 'package:news_app/screens/widget/item_tab.dart';

class TabScreen extends StatefulWidget {
  List<Sources> sources;

  TabScreen(this.sources);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int indexOfTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sources.length,
        child: TabBar(
          onTap: (value) {
            indexOfTab = value;
            setState(() {});
          },
          isScrollable: true,
          indicatorColor: Colors.transparent,
          tabs: widget.sources
              .map((source) => Tab(
                  child: ItemTab(
                      source, widget.sources.indexOf(source) == indexOfTab)))
              .toList(),
        ));
  }
}
