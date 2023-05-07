import 'package:flutter/material.dart';
import 'widgets/custom_gridview.dart';
import 'widgets/custom_listview.dart';
import 'widgets/custom_pageview.dart';
import 'widgets/custom_tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  List<Widget> items = [
    const CustomListView(),
    const CustomGridView(),
    const CustomTabBar(),
    const CustomPageView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App Bar"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: items[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        currentIndex: selectedIndex,
        onTap: (value) => setState(() {
          selectedIndex = value;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "List View",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on),
            label: "Grid View",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab),
            label: "Tab Bar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: "Page View",
          ),
        ],
      ),
    );
  }
}
