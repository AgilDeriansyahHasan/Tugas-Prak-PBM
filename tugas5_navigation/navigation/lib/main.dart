import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Navigasi Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/detail': (context) => const DetailScreen(data: 'Hello from Home!'),
        '/settings': (context) => const SettingsScreen(username: 'Guest'),
        '/profile': (context) => const ProfileScreen(name: 'Anonymous'),
      },
    );
  }
}

// Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(data: 'Data from Home (Push)'),
                  ),
                );
              },
              child: const Text('Go to Detail (Push)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/detail');
              },
              child: const Text('Go to Detail (Named Route)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings', arguments: 'John Doe');
              },
              child: const Text('Go to Settings'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile', arguments: 'Jane Doe');
              },
              child: const Text('Go to Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

// Detail Screen
class DetailScreen extends StatelessWidget {
  final String data;

  const DetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Received Data: $data'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

// Settings Screen
class SettingsScreen extends StatelessWidget {
  final String username;

  const SettingsScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as String? ?? username;

    return Scaffold(
      appBar: AppBar(title: const Text('Settings Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Username: $args'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

// Profile Screen (Baru)
class ProfileScreen extends StatelessWidget {
  final String name;

  const ProfileScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as String? ?? name;

    return Scaffold(
      appBar: AppBar(title: const Text('Profile Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, $args!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
