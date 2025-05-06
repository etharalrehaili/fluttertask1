import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Class  1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
      ),
      home: const MyHomePage(title: 'Building UI elements in Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Center(
                      child: Text('1', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
                const SizedBox(width: 8), // Space between the cards
                Card(
                  child: SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Center(
                      child: Text('2', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16), // Space between the rows
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Center(
                      child: Text('3', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
                const SizedBox(width: 8), // Space between the cards
                Card(
                  child: SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Center(
                      child: Text('4', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
