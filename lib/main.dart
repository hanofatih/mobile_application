import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      ["Flutter", "assets/images/flutter.png"],
      ["Supabase", "assets/images/supabase.jpg"],
      ["Laravel", "assets/images/laravel.png"],
      ["React", "assets/images/react.png"],
      ["Swift", "assets/images/swift.png"],
      // ["Kotlin", "assets/images/kotlin.png"],
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Home Page"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < items.length; i = i + 2) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 150,
                    color: Colors.blueGrey,
                    child: Column(
                      children: [
                        Image.asset(items[i][1]),
                        Text(
                          items[i][0],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  if (i + 1 < items.length)
                    Container(
                      width: 100,
                      height: 150,
                      color: Colors.blueGrey,
                      child: Column(
                        children: [
                          Image.asset(items[i + 1][1]),
                          Text(
                            items[i + 1][0],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
