import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSquare = false;

  void changeShape() {
    setState(() {
      isSquare = !isSquare;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Row Operations"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isSquare == true
                  ? BoxDecoration(shape: BoxShape.rectangle, color: Colors.red)
                  : BoxDecoration(shape: BoxShape.circle, color: Colors.amber),

              height: 80,
              width: 80,
              child: Text("Rectangle"),
            ),
            SizedBox(width: 6),
            Container(
              height: 80,
              width: 80,
              decoration: isSquare == true
                  ? BoxDecoration(shape: BoxShape.circle, color: Colors.amber)
                  : BoxDecoration(shape: BoxShape.rectangle, color: Colors.red),
              child: Text("Square"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        tooltip: 'Change Shape',
        child: const Icon(Icons.add),
      ),
    );
  }
}
