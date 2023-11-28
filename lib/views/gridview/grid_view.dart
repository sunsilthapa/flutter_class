import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8),
        mainAxisSpacing: 8,
        crossAxisSpacing: 4,
        children: [
          for (int i = 1; i <= 10; i++) ...{
            SizedBox(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black),
                onPressed: () {},
                child: Text(
                  "$i",
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            )
          }
          // Card(
          //     child: Text(
          //   "1",
          //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          // )),
          // Card(
          //     child: Text(
          //   "1",
          //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          // )),
        ],
      ),
    );
  }
}
