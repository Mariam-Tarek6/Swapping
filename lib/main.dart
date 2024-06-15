import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SwipePage(),
    );
  }
}

class SwipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragEnd: (details) {
        // If the user swipes up, navigate to UpPage
        if (details.velocity.pixelsPerSecond.dy < 0) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => UpPage(),
            ),
          );
        }
        // If the user swipes down, navigate to DownPage
        else if (details.velocity.pixelsPerSecond.dy > 0) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DownPage(),
            ),
          );
        }
      },
      onHorizontalDragEnd: (details) {
        // If the user swipes to the right, navigate to RightPage
        if (details.velocity.pixelsPerSecond.dx > 0) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RightPage(),
            ),
          );
        }
        // If the user swipes to the left, navigate to LeftPage
        else if (details.velocity.pixelsPerSecond.dx < 0) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => LeftPage(),
            ),
          );
        }
      },
      child: Container(
        color: Color.fromARGB(255, 182, 54, 67),
        child: Center(
          child: Text(
            'Swipe up, down, left, or right',
            style:
                TextStyle(color: Color.fromARGB(255, 6, 1, 1), fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}

class DownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Down Page'),
      ),
      body: Center(
        child: Text(
          'Down Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class UpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Up Page'),
      ),
      body: Center(
        child: Text(
          'Up Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class LeftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Left Page'),
      ),
      body: Center(
        child: Text(
          'Left Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class RightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Right Page'),
      ),
      body: Center(
        child: Text(
          'Right Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
