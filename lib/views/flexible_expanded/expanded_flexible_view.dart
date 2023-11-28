import 'package:flutter/material.dart';
import 'package:flutter_class/app/common/my_snackbar.dart';

class ExpandedFlexibleView extends StatelessWidget {
  const ExpandedFlexibleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // showSnackbar() {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(
    //       content: Text("Hello world"),
    //       backgroundColor: Colors.green,
    //       duration: Duration(seconds: 3),
    //       behavior: SnackBarBehavior.floating,
    //     ),
    //   );
    // }

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: const Text("MediQuery")),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .5,
              color: Colors.yellow,
              child: Center(
                child: ElevatedButton(
                  child: const Text("Show snackbar"),
                  onPressed: () {
                    showSnackbar(context, "success", color:Colors.green);
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.red,
                child: Center(
                  child: ElevatedButton(
                    child: const Text("Button 2"),
                    onPressed: () {
                      showSnackbar(context, "error");
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
