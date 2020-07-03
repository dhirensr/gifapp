import 'package:flutter/material.dart';

import 'src/01_what_is_git.dart';

void main() => runApp(MyApp());

class Page {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Page({this.name, this.route, this.builder});
}

final gitPages = [
  Page(
      name: 'What is Git? ',
      route: WhatisGit.routeName,
      builder: (context) => WhatisGit()),
];

final gitPageRoutes =
    Map.fromEntries(gitPages.map((d) => MapEntry(d.route, d.builder)));

final allRoutes = <String, WidgetBuilder>{
  ...gitPageRoutes,
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Git - The GIF Way',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: allRoutes,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final headerStyle = Theme.of(context).textTheme.headline6;
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Git - The GIF Way'),
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Git', style: headerStyle)),
          ...gitPages.map((d) => PageTile(d)),
        ],
      ),
    );
  }
}

class PageTile extends StatelessWidget {
  final Page page;

  PageTile(this.page);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(page.name),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {
        Navigator.pushNamed(context, page.route);
      },
    );
  }
}