import 'package:flutter/material.dart';

void main() {
  runApp(const SimpleUi());
}

class SimpleUi extends StatelessWidget {
  const SimpleUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple UI App',
      home: Scaffold(
        appBar: AppBar(
          title:
              const Text('Simple UI App'), // Title bar with the name of the app
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content
            children: <Widget>[
              const Text(
                'Welcome to My Simple App!', // Text widget with a welcome message
                style: TextStyle(
                    fontSize: 24), // Larger font size for the welcome text
              ),
              const SizedBox(height: 20), // Space between the Text and Button
              ElevatedButton(
                onPressed: () {
                  print(
                      'Button Clicked!'); // Print message to the console on button press
                },
                child: const Text('Press Me'), // ElevatedButton widget
              ),
              const SizedBox(
                  height: 20), // Space between the button and the image
              Image.network(
                'https://tinyurl.com/bdfd544u',
                height: 200,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
