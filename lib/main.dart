import 'package:flutter/material.dart';
import 'package:udemy_flutter/HomePage.dart';
import 'package:udemy_flutter/Search.dart';

void main() => runApp(NetCodeme());

class NetCodeme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'NetCodeme',
        theme: ThemeData(primaryColor: Colors.black),
        home: NetCodemeHeader());
  }
}

class NetCodemeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(brightness: Brightness.dark),
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.home,
                ),
                text: "Home",
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                ),
                text: "Search",
              ),
              Tab(
                icon: Icon(
                  Icons.file_download,
                ),
                text: "Downloads",
              ),
              Tab(
                icon: Icon(
                  Icons.list,
                ),
                text: "More",
              ),
            ],
            unselectedLabelColor: Color(0xff999999),
            labelColor: Colors.white,
            indicatorColor: Colors.transparent,
          ),
          body: TabBarView(
            children: <Widget>[
              HomePage(),
              Search(),
              Center(child: Text('Page 3'),),
              Center(child: Text('Page 4'),),
            ],
          ),
        ),
      ),
    );
  }
}
