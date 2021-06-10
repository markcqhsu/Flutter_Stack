import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          color: Colors.green[200],
          constraints: BoxConstraints(
            minWidth: 20,
            maxWidth: 300,
            minHeight: 20,
            maxHeight: 300,
          ),
          child: Stack(
            // clipBehavior: Clip.none,//不要裁邊
            // fit: StackFit.loose,//在0到我的上限之間, 在合理的範圍內可以稍微小一點
            // fit: StackFit.expand,//會要求Children盡量滿足上級約束空間.
            fit: StackFit.passthrough, //直接把上級的約束傳給下面
            // alignment: Alignment.center,
            alignment: Alignment(-1, 0.75),
            children: <Widget>[
              // Positioned(
              //   top: 0,
              //   left: 0,
              //   child: FlutterLogo(size: 250),
              // ),
              FlutterLogo(
                size: 250,
              ),
              Positioned(
                top: 0,
                height: 50,

                left: 10,
                // right: 0,
                width: 180,
                // child: Container(
                //   width: 80,
                //   height: 80,
                //   color: Colors.yellow,
                // ),
                child: Transform.translate(//位移
                  offset: Offset(-50, 0),
                  child: ElevatedButton(
                    child: Text(""),
                    onPressed: () {},
                  ),
                ),
              ),
              Text(
                'Text',
                style: TextStyle(fontSize: 70),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline1,
              ),
              // Positioned(
              //   left: 0,
              //   top: 0,
              //   child: Container(
              //     width: 24,
              //     height: 24,
              //     color: Colors.red,
              //   ),
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
