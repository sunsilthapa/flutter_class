import 'package:flutter/material.dart';
import 'package:flutter_class/app/routes/app_routes.dart';
import 'package:flutter_class/model/student.dart';

class StudentDetailView extends StatefulWidget {
  const StudentDetailView({Key? key}) : super(key: key);

  @override
  _StudentDetailViewState createState() => _StudentDetailViewState();
}

class _StudentDetailViewState extends State<StudentDetailView> {
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();

  final _gap = const SizedBox(
    height: 20,
  );

  final items = [
    const DropdownMenuItem(value: 'Kathmandu', child: Text('Kathmandu')),
    const DropdownMenuItem(value: 'Pokhara', child: Text('Pokhara')),
    const DropdownMenuItem(value: 'Butwal', child: Text('Butwal')),
    const DropdownMenuItem(value: 'Illam', child: Text('Illam')),
  ];

  String? city;

  List<Student> lstStudents = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Student Detail"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: fNameController,
                decoration: const InputDecoration(
                    labelText: "First Name", border: OutlineInputBorder()),
              ),
              _gap,
              TextFormField(
                controller: lNameController,
                decoration: const InputDecoration(
                    labelText: "Last Name", border: OutlineInputBorder()),
              ),
              _gap,
              DropdownButtonFormField(
                items: items,
                onChanged: (value) {
                  setState(() {
                    city = value;
                  });
                },
                icon: const Icon(
                  Icons.arrow_circle_down,
                ),
                hint: const Text('Select city'),
                decoration: const InputDecoration(
                    labelText: 'Select city', border: OutlineInputBorder()),
              ),
              _gap,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Student student = Student(
                        fname: fNameController.text,
                        lname: lNameController.text,
                        city: city!);

                    setState(() {
                      lstStudents.add(student);
                    });
                  },
                  child: const Text("Add student"),
                ),
              ),
              _gap,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.outputViewRoute,
                        arguments: lstStudents);
                  },
                  child: const Text("Student list"),
                ),
              ),
              _gap,
              lstStudents.isEmpty
                  ? const Center(
                      child: Text("No data"),
                    )
                  : Expanded(
                      child: ListView.builder(
                        itemCount: lstStudents.length,
                        itemBuilder: (context, index) => ListTile(
                          leading: const Icon(Icons.people),
                          title: Text(lstStudents[index].fname),
                          subtitle: Text(lstStudents[index].city),
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    fNameController.dispose();
    lNameController.dispose();
    super.dispose();
  }
}
























// import 'package:flutter/material.dart';
// import 'package:flutter_class/app/common/common_listview.dart';

// import '../../model/student.dart';

// class StudentListView extends StatefulWidget {
//   const StudentListView({super.key});

//   @override
//   State<StudentListView> createState() => _StudentListViewState();
// }

// class _StudentListViewState extends State<StudentListView> {


  
//   final _formKey = GlobalKey<FormState>();
//   final fnameController = TextEditingController();
//   final lnameController = TextEditingController();

//   String? city;

//   final items = [
//     const DropdownMenuItem(
//       value: 'Kathmandu',
//       child: Text('Kathmandu'),
//     ),
//     const DropdownMenuItem(
//       value: 'Pokhara',
//       child: Text('Pokhara'),
//     ),
//     const DropdownMenuItem(
//       value: 'Chitwan',
//       child: Text('Chitwan'),
//     ),
//   ];

//   final _gap = const SizedBox(height: 8);
//   List<Student> lstStudents = [];


//   @override
//   void initState() {
//     super.initState();
//     // Initialization code goes here
//   }

//   @override
//   void dispose() {
//     // Cleanup code goes here
//     fnameController.dispose();
//     lnameController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Student ListView'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: fnameController,
//                 decoration: const InputDecoration(
//                   labelText: 'First Name',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter first name';
//                   }
//                   return null;
//                 },
//               ),
//               _gap,
//               TextFormField(
//                 controller: lnameController,
//                 decoration: const InputDecoration(
//                   labelText: 'Last Name',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter last name';
//                   }
//                   return null;
//                 },
//               ),
//               _gap,
//               DropdownButtonFormField(
//                 icon: const Icon(Icons.arrow_downward),
//                 items: items,
//                 onChanged: (value) {
//                   setState(() {
//                     city = value;
//                   });
//                 },
//                 hint: const Text('Select City'),
//                 decoration: const InputDecoration(
//                   labelText: 'Select City',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null) {
//                     return 'Please select city';
//                   }
//                   return null;
//                 },
//               ),
//               _gap,
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate() && city != null) {
//                       Student student = Student(
//                         fname: fnameController.text,
//                         lname: lnameController.text,
//                         city: city!,
//                       );

//                       setState(() {
//                         lstStudents.add(student);
//                       });
//                     }
//                   },
//                   child: const Text('Add Student'),
//                 ),
//               ),
//               _gap,
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.pushNamed(
//                       context,
//                       '/output-view',
//                       arguments: lstStudents,
//                     );
//                   },
//                   child: const Text('View Students'),
//                 ),
//               ),
//               Expanded(child: CommonListView(lstStudents: lstStudents)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
