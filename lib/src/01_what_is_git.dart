// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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

class MyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        child: Text('hello world')
    );
  }
}


final pages = [Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: new BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
      ),
      child : new Column(
        children : <Widget>[
          RichText(
            text: TextSpan(
              //text: "Usage of ",
              style: TextStyle(fontSize: 30.0, color: Colors.black),
              children: <TextSpan>[
                //TextSpan(text: " Rich ", style: TextStyle(color: Colors.blue)),
                TextSpan(text: " What is Git ? ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
              ]
            ),
          ),

          Expanded ( child : Text(
              "Version control is used to manage multiple versions of computer files and programs. A version control system, or VCS, provides two primary data management capabilities. It allows users to 1) lock files so they can only be edited by one person at a time, and 2) track changes to files.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily : "Roboto",
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 17.0,
                color: Colors.grey[800],
              )
          )),
          Expanded ( child : Text(
              "By far, the most widely used modern version control system in the world today is Git. Git is a mature, actively maintained open source project originally developed in 2005 by Linus Torvalds, the famous creator of the Linux operating system kernel.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily : "Roboto",
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 17.0,
                color: Colors.grey[800],
              )
          )),
          Image.network('https://media.giphy.com/media/kH6CqYiquZawmU1HI6/giphy.gif',fit: BoxFit.cover,)
          //ImageBanner("static/gifs/git_checkout.gif"),
        ],
    )),
    Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: new BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
      ),
      child : new Column(
        children : <Widget>[
          RichText(
            text: TextSpan(
              //text: "Usage of ",
              style: TextStyle(fontSize: 25.0, color: Colors.black),
              children: <TextSpan>[
                //TextSpan(text: " Rich ", style: TextStyle(color: Colors.blue)),
                TextSpan(text: " Why is Git very popular among organizations?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
              ]
            ),
          ),
          Spacer(),

          Container (
            constraints: BoxConstraints.expand(height: 150.0),
            child : Text(
              "The raw performance characteristics of Git are very strong when compared to many alternatives. Committing new changes, branching, merging and comparing past versions are all optimized for performance.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily : "Roboto",
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 17.0,
                color: Colors.grey[800],
              )
          )),
          Container (
            constraints: BoxConstraints.expand(height: 200.0),
            child : Text(
              "One of Git's key design objectives is flexibility. Git is flexible in several respects: in support for various kinds of nonlinear development workflows, in its efficiency in both small and large projects and in its compatibility with many existing systems and protocols.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily : "Roboto",
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 17.0,
                color: Colors.grey[800],
              )
          )),
          Container (
            constraints: BoxConstraints.expand(height: 200.0),
            child : Text(
              "Git has been designed with the integrity of managed source code as a top priority. The content of the files as well as the true relationships between files and directories, versions, tags and commits, all of these objects in the Git repository are secured with a cryptographically secure hashing algorithm called SHA1.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily : "Roboto",
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 17.0,
                color: Colors.grey[800],
              )
          )),
          ],
  ))];


  class WhatisGit extends StatelessWidget {
    static String routeName = '01_what_is_git';

    @override
    Widget build(BuildContext context) {
      // this widget is a sample demo for a screen
      return Scaffold(
        appBar: AppBar(),
        body: Swiper(
          itemCount: 2,
          pagination: new SwiperPagination(),
          controller: new SwiperController(),
          itemBuilder: (BuildContext context, int index){
            return pages[index]; },
        )
      );
    }
  }
