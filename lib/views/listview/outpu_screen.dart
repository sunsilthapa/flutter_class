import 'package:flutter/material.dart';

import '../../model/student.dart';

class OutpuScreen extends StatefulWidget {
  const OutpuScreen({Key? key}) : super(key: key);

  @override
  _OutpuScreenState createState() => _OutpuScreenState();
}

class _OutpuScreenState extends State<OutpuScreen> {
  List<Student> lstStudent = [];

  @override
  void didChangeDependencies() {
    // Receive the student from the previous screen
    lstStudent = ModalRoute.of(context)!.settings.arguments as List<Student>;

    super.didChangeDependencies();
  }

  // @override
  // void didChangeDependencies() {
  //   // Receive the student from the previous screen
  //   lstStudent = ModalRoute.of(context)!.settings.arguments as List<Student>;
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Student Details'),
          elevation: 0,
        ),
        body: lstStudent.isEmpty
            ? const Text("no data")
            : Expanded(
                child: ListView.builder(
                  itemCount: lstStudent.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(
                        '${lstStudent[index].fname} ${lstStudent[index].lname}',
                      ),
                      subtitle: Text(lstStudent[index].city),
                      trailing: Wrap(
                        spacing: 12,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                lstStudent.removeAt(index);
                              });
                            },
                            icon: const Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                lstStudent.removeAt(index);
                              });
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                      onTap: () {},
                    );
                  },
                ),
              ));
  }
}
