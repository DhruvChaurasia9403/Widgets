import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class tabbar extends StatelessWidget {
  const tabbar({super.key});

  @override
  Widget build(BuildContext context) {


    final List<Map<String, String>> contacts = [
      {'name': 'Alice', 'message': 'How are you?', 'time': '9:30 AM'},
      {'name': 'Bob', 'message': 'Let\'s meet tomorrow', 'time': '10:15 AM'},
      {'name': 'Charlie', 'message': 'Call me', 'time': '11:00 AM'},
      {'name': 'David', 'message': 'See you soon', 'time': '12:45 PM'},
      {'name': 'Eve', 'message': 'Got the documents', 'time': '1:20 PM'},
      {'name': 'Frank', 'message': 'On my way', 'time': '2:00 PM'},
      {'name': 'Grace', 'message': 'Meeting postponed', 'time': '2:30 PM'},
      {'name': 'Hank', 'message': 'Let\'s catch up!', 'time': '3:15 PM'},
      {'name': 'Ivy', 'message': 'Where are you?', 'time': '4:00 PM'},
      {'name': 'Jack', 'message': 'Project updates?', 'time': '4:45 PM'},
      {'name': 'Kathy', 'message': 'Good morning!', 'time': '5:30 PM'},
      {'name': 'Leo', 'message': 'Happy Birthday!', 'time': '6:00 PM'},
    ];
    final List<String> avatars = [
      'https://randomuser.me/api/portraits/women/1.jpg',
      'https://randomuser.me/api/portraits/men/2.jpg',
      'https://randomuser.me/api/portraits/men/3.jpg',
      'https://randomuser.me/api/portraits/men/4.jpg',
      'https://randomuser.me/api/portraits/women/5.jpg',
      'https://randomuser.me/api/portraits/men/6.jpg',
      'https://randomuser.me/api/portraits/women/7.jpg',
      'https://randomuser.me/api/portraits/men/8.jpg',
      'https://randomuser.me/api/portraits/women/9.jpg',
      'https://randomuser.me/api/portraits/men/10.jpg',
      'https://randomuser.me/api/portraits/women/11.jpg',
      'https://randomuser.me/api/portraits/men/12.jpg'
    ];


    return DefaultTabController(
      length:4,
      child:Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: CupertinoColors.activeGreen,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat),text: 'chats',),
              Tab(icon: Icon(Icons.group),text: 'groups',),
              Tab(icon: Icon(Icons.update),text: 'status',),
              Tab(icon: Icon(Icons.call),text: 'call',),
            ],
          ),
        ),
        body:
          TabBarView(
            children: [
              Container(
                child: ListView.builder(
                  itemCount: 12,

                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(avatars[index]),
                      ),
                      title: Text(contacts[index]['name']!),
                      subtitle: Text(contacts[index]['message']!),
                      trailing: Text(contacts[index]['time']!),
                    );
                  }
                ),
              ),
              Center(
                child: Text('Groups'),
              ),
              Center(
                  child: Text('Status'),
              ),
              Center(
                child: Text('Calls'),
              ),
            ],
          )
      )
    );
  }
}
