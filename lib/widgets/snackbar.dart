import 'package:flutter/material.dart';
class snackbar extends StatelessWidget {
  const snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.red,
      //   title: Text('Snackbar', style: TextStyle(color: Colors.white),
      // ),

          body: ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    backgroundColor: Colors.orange,
                    duration: Duration(seconds: 3),
                    padding: EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        print('Undo');
                      },
                    ),
                    behavior: SnackBarBehavior.floating,
                    content: Text('Error')
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Show SnackBar')

          ),
    );
  }
}
