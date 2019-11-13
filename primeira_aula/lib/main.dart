import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _letra = "A";

  void _incrementar() {
    setState(() {
      _counter++;
      if(_counter > 90){
        _counter = 65;
      }
      _letra = String.fromCharCode(_counter);
    });
  }
  void _decrementar() {
    setState(() {
      _counter--;
      if(_counter < 65){
        _counter = 90;
      }
      _letra = String.fromCharCode(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Meu primeiro app",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$_letra",
                style: TextStyle(
                  fontSize: 60,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _decrementar,
              tooltip: "Decrementar",
              child: Icon(Icons.do_not_disturb_on),
            ),
            FloatingActionButton(
              onPressed: _incrementar,
              tooltip: "Incrementar",
              child: Icon(Icons.add_circle),
            ),
          ],
        ),
      ),
      theme: ThemeData(
        primaryColor: Colors.green
      ),

    );
  }
}