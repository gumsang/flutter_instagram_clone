import 'package:flutter/material.dart';

import 'create_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreatePage()));
        },
        child: Icon(Icons.create),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        mainAxisExtent: 1.0,
        crossAxisSpacing: 1.0,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return _buildListItem(context, index);
      },
    );
  }

  _buildListItem(BuildContext context, int index) {
    return Image.network(
      'http://image.dongascience.com/Photo/2018/12/a24091af3058633ffd3168fed34a0f40.jpg',
      fit: BoxFit.cover,
    );
  }
}
