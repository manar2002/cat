import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(12.0),
          children: const [
            Text(
              "Item 1",
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Item 2",
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Item 3",
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Item 4",
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Item 5",
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Item 6",
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Item 7",
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Item 8",
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Item 9",
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Item 10",
            ),
          ],
        ),
      ),
    );
  }
}
