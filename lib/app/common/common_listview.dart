import 'package:flutter/material.dart';
import 'package:flutter_class/model/student.dart';

class CommonListView extends StatelessWidget {
  const CommonListView({
    super.key,
    required this.lstStudents,
  });

  final List<Student> lstStudents;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: lstStudents.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 200,
          width: double.infinity,
          child: GestureDetector(
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("success")));
            },
            onDoubleTap: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("double tap")));         },
            child: Card(
              color: Colors.amber,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text(lstStudents[index].fname)),
                  Center(child: Text(lstStudents[index].city)),
                ],
              ),
            ),
          ),
        );
        // return ListTile(
        //   leading: const Icon(Icons.person),
        //   title: Text(
        //     '${lstStudents[index].fname} ${lstStudents[index].lname}',
        //   ),
        //   subtitle: Text(lstStudents[index].city),
        //   trailing: Wrap(
        //     spacing: 12,
        //     children: [
        //       IconButton(
        //         onPressed: () {
        //           // setState(() {
        //           //   lstStudents.removeAt(index);
        //           // });
        //         },
        //         icon: const Icon(Icons.edit),
        //       ),
        //       IconButton(
        //         onPressed: () {
        //           // setState(() {
        //           //   lstStudents.removeAt(index);
        //           // });
        //         },
        //         icon: const Icon(Icons.delete),
        //       ),
        //     ],
        //   ),
        //   onTap: () {},
        // );
      },
    );
  }
}
