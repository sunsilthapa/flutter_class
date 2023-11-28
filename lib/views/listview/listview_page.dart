import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textFieldController = TextEditingController();
  final List<String> _savedValues = [];

  void _saveValue() {
    setState(() {
      String value = _textFieldController.text;
      _savedValues.add(value);
      _textFieldController.clear();
    });
  }

  void _deleteValue(int index) {
    setState(() {
      _savedValues.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save and List Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _textFieldController,
              decoration: const InputDecoration(labelText: 'Enter Value'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _saveValue,
              child: const Text('Save'),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemCount: _savedValues.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_savedValues[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _deleteValue(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
