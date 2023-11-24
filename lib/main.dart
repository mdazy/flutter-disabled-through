import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int backgroundClicked = 0;
  int buttonClicked = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            setState(() {
              backgroundClicked++;
            });
          },
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Background clicked $backgroundClicked times"),
                      const SizedBox(height: 16),
                      Text("Enabled button clicked $buttonClicked times"),
                      const SizedBox(height: 16),
                      const ElevatedButton(
                        onPressed: null,
                        child: Text("Disabled"),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonClicked++;
                          });
                        },
                        child: const Text("Enabled"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
