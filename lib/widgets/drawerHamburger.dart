import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child:ListView(
            children:[
              DrawerHeader(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                    child: const Row(
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/57899051?v=4'),
                          ),
                        ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Dhruv', style: TextStyle(fontSize: 30 , fontFamily: 'sans-serif', color: Colors.white)
                            )
                          ),
                      ]
                    )
                  ),
                ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ]
          )
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer Widget'),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Drawer Widget')
          ),
        ),
      ),
    );
  }
}