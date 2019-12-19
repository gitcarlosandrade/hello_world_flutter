import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        softWrap: true,
      ),
    );
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Title of the entire porra",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(left: 8, bottom: 8),
                    child: Text(
                      'Subtitle meh',
                      style: TextStyle(color: Colors.grey[500]),
                    )
                )
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[Icon(Icons.star, color: Colors.red,)],
              )
          ),
          Container(
              padding: const EdgeInsets.only(right: 8),
              child: Column(
                children: <Widget>[Text('41', style: TextStyle(fontSize: 20),)],
              )
          )
        ],
      ),
    );
    Widget imageSection = Image.asset('images/lake.jpeg', fit: BoxFit.cover);

    return MaterialApp(
        title: 'Flutter Hello World',
        home: Scaffold(
            appBar: AppBar(title: Text('Flutter Layout Demo(nho)')),
            body: ListView(
              children: <Widget>[
                imageSection,
                titleSection,
                buttonSection,
                textSection
              ],
            )
        )
    );
  }

  Column _buildButtonColumn(Color color,
      IconData iconData,
      String label) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(iconData, color: color),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
}