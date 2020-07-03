// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';


class ImageBanner extends StatelessWidget {
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 200.0),
        decoration: BoxDecoration(color: Colors.grey),
        child: Image.asset(
          _assetPath,
          fit: BoxFit.cover,
        ));
  }
}


class WhatisGit extends StatelessWidget {
  static String routeName = '01_what_is_git';

  @override
  Widget build(BuildContext context) {
  // this widget is a sample demo for a screen
    return Scaffold(
      appBar: AppBar(),
      body: Container(
      child : Column(
  children : <Widget>[
  RichText(
          text: TextSpan(
            text: "Usage of ",
            style: TextStyle(fontSize: 30.0, color: Colors.black),
            children: <TextSpan>[
              TextSpan(text: " Rich ", style: TextStyle(color: Colors.blue)),
              TextSpan(text: " Text Widget! ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
            ]
          ),
        ),
  FlutterLogo(),
  Expanded ( child : Text(
  "The style property of Text widget can be used to apply various styles to a text, but a limitation of it is, the style gets applied to the entire text irrespective of whether the text is a single line or multiline",
  style: TextStyle(
    fontFamily : 'Open Sans',
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    fontSize: 17.0,
    color: Colors.grey[800],
  )
  )),

  ImageBanner("static/gifs/git_checkout.gif"),],
  )
  )
    );
  }
}
