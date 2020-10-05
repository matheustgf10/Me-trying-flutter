import 'package:flutter/material.dart';

import 'post.dart';
import 'post_list.dart';
import 'text_input_widget.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = [];

  void newPost(String text) {
    this.setState(() {
      posts.add(new Post(text, "Rash"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello World!')),
        body: Column(children: <Widget>[
          Expanded(child: PostList(this.posts)),
          Expanded(child: TextInputWidget(this.newPost))
        ]));
  }
}
