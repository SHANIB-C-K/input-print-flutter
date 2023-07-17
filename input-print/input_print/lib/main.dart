import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textControler = TextEditingController();

  String _displayText = 'Text will be displayed here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Printer'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            color: Colors.yellow[100],
            child: Column(
              children: [
                TextField(
                  controller: _textControler,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type something',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    //Get Date
                    print(_textControler.text);
                    setState(() {
                      _displayText = _textControler.text;
                    });
                  },
                  child: Text('Click Here'),
                ),
                Text(_displayText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
