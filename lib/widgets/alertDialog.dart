import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        backgroundColor: Colors.blueGrey,
        elevation: 10,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showMyDialog(context);
          },
          child: Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}

Future<void> showMyDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        title: Text('Alert Dialog'),
        content: SingleChildScrollView( // Wrap with SingleChildScrollView
          child: ListBody(
            children: [
              Text('This is an alert dialog.'),
              Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );
}