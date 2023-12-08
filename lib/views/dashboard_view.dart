import 'package:flutter/material.dart';
import 'package:flutter_class/views/bottom_view/about_view.dart';
import 'package:flutter_class/views/bottom_view/cart_view.dart';
import 'package:flutter_class/views/bottom_view/home_view.dart';
import 'package:flutter_class/views/bottom_view/search_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selected_index = 0;

  List<Widget> lstButtons = [
    const HomeView(),
    const CartView(),
    const SearchView(),
    const AboutView()
  ];

  TimeOfDay? time = TimeOfDay.now();
  DateTime? data = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(fontFamily: "Montserrat Bold"),
        ),
      ),
      body: Column(
        children: [
          lstButtons[_selected_index],
          ElevatedButton(onPressed: () {}, child: const Text("hello")),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Time: ${time!.hour}: ${time!.minute}"),
              const Spacer(
                flex: 2,
              ),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? newTime = await showTimePicker(
                        context: context, initialTime: time!);
                    if (newTime != null) {
                      setState(() {
                        time = newTime;
                      });
                    }
                  },
                  child: const Text("Change time")),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_outlined), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.man), label: "About"),
        ],
        backgroundColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        currentIndex: _selected_index,
        onTap: (index) {
          setState(() {
            _selected_index = index;
          });
        },
      ),
    );
  }
}
