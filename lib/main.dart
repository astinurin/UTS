import 'package:flutter/material.dart';
import 'widgets/bottom_navbar.dart';  
import 'widgets/custom_app_bar.dart';  
import 'screens/acc_screen.dart';  
import 'screens/pay_screen.dart';  
import 'screens/history.dart';  
import 'screens/home.dart';  
import 'screens/inbox.dart';  

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
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  int _activeIndex = 0; // Indeks untuk Bottom Navigation Bar

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Daftar widget untuk konten di body
    final List<Widget> _screens = [
      HomeScreen(),     // Widget untuk Dashboard
      HistoryScreen(),  // Widget untuk Logs
      PayScreen(),      // Widget untuk Transactions
      InboxScreen(),    // Widget untuk Messages
      AccountScreen(),  // Widget untuk Profile
    ];

    return Scaffold(
      appBar: CustomAppBar(), // Menggunakan CustomAppBar
      body: _screens[_activeIndex], // Menampilkan screen sesuai dengan _activeIndex
      bottomNavigationBar: MyBottomNavBar(
        activeIndex: _activeIndex,
        onItemTapped: _onItemTapped,
      ), // Menambahkan MyBottomNavBar
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
