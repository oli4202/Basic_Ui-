import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFDF6FF),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFC107), // Amber
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.phone, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(40),
              decoration: const BoxDecoration(
                color: Color(0xFFEADBFF), // Light purple
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.icecream_outlined,
                size: 80,
                color: Color(0xFF3B006A), // Dark purple
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Ice cream is very delicious right?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.all(40),
              decoration: const BoxDecoration(
                color: Color(0xFFEADBFF),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.code,
                size: 80,
                color: Color(0xFF3B006A),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Programming is not boring if you love it',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
