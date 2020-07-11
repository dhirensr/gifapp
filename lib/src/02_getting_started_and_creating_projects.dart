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
    return Container(color: Colors.green, child: Text('hello world'));
  }
}

final pages = [
  Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: new BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
      ),
      child: new Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
                //text: "Usage of ",
                style: TextStyle(fontSize: 30.0, color: Colors.black),
                children: <TextSpan>[
                  //TextSpan(text: " Rich ", style: TextStyle(color: Colors.blue)),
                  TextSpan(
                      text: "Git Init",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold))
                ]),
          ),
          Container(
              child: Text(
                  "The git init command creates a new Git repository. It can be used to convert an existing, unversioned project to a Git repository or initialize a new, empty repository. Most other Git commands are not available outside of an initialized repository, so this is usually the first command you'll run in a new project. \n \n Executing git init creates a .git subdirectory in the current working directory, which contains all of the necessary Git metadata for the new repository. This metadata includes subdirectories for objects, refs, and template files. A HEAD file is also created which points to the currently checked out commit.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17.0,
                    color: Colors.grey[800],
                  ))),
          SizedBox(height: 20),
          Container(
            width: 200.0,
            height: 100.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.black,
            ),
            child: Text(
              "\$ git init \n OR \n\$ git init <directory>",
              style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 17.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      )),
  Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: new BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
      ),
      child: new Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
                //text: "Usage of ",
                style: TextStyle(fontSize: 25.0, color: Colors.black),
                children: <TextSpan>[
                  //TextSpan(text: " Rich ", style: TextStyle(color: Colors.blue)),
                  TextSpan(
                      text: "Git Clone",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold))
                ]),
          ),
          Container(
              child: Text(
                  "git clone is a Git command line utility which is used to target an existing repository and create a clone, or copy of the target repository. \n If a project has already been set up in a central repository, the git clone command is the most common way for users to obtain a development copy. \n As a convenience, cloning automatically creates a remote connection called \"origin\" pointing back to the original repository. This automatic connection is established by creating Git refs to the remote branch heads under refs/remotes/origin and by initializing remote.origin.url and remote.origin.fetch configuration variables.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17.0,
                    color: Colors.grey[800],
                  ))),
          Container(
            width: 300.0,
            height: 200.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.black,
            ),
            child: Text(
              "Cloning to a specific folder \n\$ git clone <repo> <directory> \n Cloning a specific tag \n\$ git clone --branch <tag> <repo> \n Shallow Clone \n\$ git clone -depth=1 <repo>",
              style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 17.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ))
];

class GettingStarted extends StatelessWidget {
  static String routeName = '02_getting_started_and_creating_projects';

  @override
  Widget build(BuildContext context) {
    // this widget is a sample demo for a screen
    return Scaffold(
        appBar: AppBar(),
        body: Swiper(
          itemCount: pages.length,
          pagination: new SwiperPagination(),
          controller: new SwiperController(),
          itemBuilder: (BuildContext context, int index) {
            return pages[index];
          },
        ));
  }
}
