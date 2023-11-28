import 'package:flutter/material.dart';
import 'package:flutter_class/app/common/common_listview.dart';

import '../../model/student.dart';

class StudentListView extends StatefulWidget {
  const StudentListView({super.key});

  @override
  State<StudentListView> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {


  
  final _formKey = GlobalKey<FormState>();
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();

  String? city;

  final items = [
    const DropdownMenuItem(
      value: 'Kathmandu',
      child: Text('Kathmandu'),
    ),
    const DropdownMenuItem(
      value: 'Pokhara',
      child: Text('Pokhara'),
    ),
    const DropdownMenuItem(
      value: 'Chitwan',
      child: Text('Chitwan'),
    ),
  ];

  final _gap = const SizedBox(height: 8);
  List<Student> lstStudents = [];


  @override
  void initState() {
    super.initState();
    // Initialization code goes here
  }

  @override
  void dispose() {
    // Cleanup code goes here
    fnameController.dispose();
    lnameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student ListView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: fnameController,
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter first name';
                  }
                  return null;
                },
              ),
              _gap,
              TextFormField(
                controller: lnameController,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter last name';
                  }
                  return null;
                },
              ),
              _gap,
              DropdownButtonFormField(
                icon: const Icon(Icons.arrow_downward),
                items: items,
                onChanged: (value) {
                  setState(() {
                    city = value;
                  });
                },
                hint: const Text('Select City'),
                decoration: const InputDecoration(
                  labelText: 'Select City',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Please select city';
                  }
                  return null;
                },
              ),
              _gap,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() && city != null) {
                      Student student = Student(
                        fname: fnameController.text,
                        lname: lnameController.text,
                        city: city!,
                      );

                      setState(() {
                        lstStudents.add(student);
                      });
                    }
                  },
                  child: const Text('Add Student'),
                ),
              ),
              _gap,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/output-view',
                      arguments: lstStudents,
                    );
                  },
                  child: const Text('View Students'),
                ),
              ),
              Expanded(child: CommonListView(lstStudents: lstStudents)),
            ],
          ),
        ),
      ),
    );
  }
}
