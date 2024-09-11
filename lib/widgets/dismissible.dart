import 'package:flutter/material.dart';

class DismissibleList extends StatefulWidget {
  const DismissibleList({Key? key}) : super(key: key);

  @override
  State<DismissibleList> createState() => _DismissibleListState();
}

class _DismissibleListState extends State<DismissibleList> {
  List<String> names = [
    'Aman',
    'Ballu',
    'Chintu',
    'Dhruv',
    'Ekta',
    'Fatima',
    'Gautam',
    'Harsh',
    'Indori',
    'Jadoo'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Dismissible',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final item = names[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (direction) {
              setState(() {
                names.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$item dismissed')),
              );
            },
            background: Container(color: Colors.red),
            secondaryBackground: Container(color: Colors.green),
            child: Card(
              color: Colors.grey,
              child: ListTile(
                title: Text(item),
              ),
            ),
          );
        },
      ),
    );
  }
}
