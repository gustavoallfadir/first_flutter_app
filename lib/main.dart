import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Gustavo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Mi primera app con Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String _hasPresionado() {
    if (this._counter > 0) {
      return "Has presionado el botón";
    }
    return "";
  }

  String _contador() {
    if (_counter < 1) {
      return "Presiona el botón";
    } else if (_counter == 1) {
      return "$_counter vez";
    }
    return "$_counter veces";
  }

  String _noTeCansas() {
    if (this._counter >= 99) {
      setState(() {
        _counter = -1;
      });
      return "¡BYE!";
    } else if (this._counter >= 80) {
      return "¡¡¡ -_- !!!";
    } else if (this._counter >= 60) {
      return "¡¡¡MALDITO INSECTO!!!";
    } else if (this._counter >= 40) {
      return "¡¡¡YAAAAAAA WEEEEEEEEEI!!!";
    } else if (this._counter >= 20) {
      return "¡¡¡YAAAAAAAAAAAAAAA!!!";
    } else if (this._counter >= 10) {
      return "¿No te cansas de estar jodiendo?";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _hasPresionado(),
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              _contador(),
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              _noTeCansas(),
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(
          Icons.android_outlined,
          size: 40,
        ),
      ),
    );
  }
}
