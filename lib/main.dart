import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 10 Demo',
      routes: {
        '/widget': (_) => new WebviewScaffold(
          url: "PLACE_URL_HERE",
          appBar: new AppBar(
            title: const Text('Widget Webview'),
          ),
          withZoom: false,
          withLocalStorage: true,
        ),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _opennewpage(){
    Navigator.of(context).pushNamed('/widget');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: Text('Open Link'),
          onPressed: () {
            _opennewpage();
          },
        ),
      ),
    );
  }
}

