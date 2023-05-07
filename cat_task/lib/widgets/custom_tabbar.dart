import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tabs: const [
                    Tab(
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.video_call,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(children: [
                  MyTabOne(),
                  MyTabTwo(),
                  // MyPostTab(),
                  // MyReelsTab(),
                  // MyTagTab(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyTabOne extends StatelessWidget {
  const MyTabOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "This is Tab One",
      style: TextStyle(fontSize: 20),
    ));
  }
}

class MyTabTwo extends StatelessWidget {
  const MyTabTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "This is Tab Two",
      style: TextStyle(fontSize: 20),
    ));
  }
}
