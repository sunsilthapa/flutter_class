import 'package:flutter/material.dart';

class Classwork extends StatelessWidget {
  const Classwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Rows and Column"),
          centerTitle: true,
        ),
        body: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * .2,
            color: Colors.blue,
            child: Row(children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "Container 1",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: double.infinity,
                  color: const Color.fromARGB(255, 243, 96, 33),
                  child: const Center(
                      child: Text(
                    "Container 2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "Container 3",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .3,
            color: const Color.fromARGB(255, 18, 62, 98),
            child: const Center(
              child: Text("Container 2",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .2,
            color: Colors.blue,
            child: const Center(
              child: Text("Container 3",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            ),
          ),
          Expanded(
            child: Container(
                height: MediaQuery.of(context).size.height * .2,
                color: const Color.fromARGB(255, 15, 66, 107),
                child: const Center(
                  child: Text("Container 4",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                )),
          ),
        ]),
      ),
    );
  }
}
