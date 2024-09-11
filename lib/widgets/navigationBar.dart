import 'package:flutter/material.dart';
import 'package:widgets/widgets/AnimatedText.dart';
import 'package:widgets/widgets/BottomSheet.dart';
import 'package:widgets/widgets/snackbar.dart';


class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int selectedPage = 0;

  PageController pageController = PageController();

  // List <Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Profile')
  // ];


  void onItemTapped(int index){
    setState(() {
      selectedPage = index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        elevation: 8,
        backgroundColor: Colors.blue,
      ),
      body: PageView(
        controller:pageController,
        children:[
          animated(),
          snackbar(),
          bottom(),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label : 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
        ],
        currentIndex: selectedPage,
        selectedItemColor: Colors.blue,
        onTap: onItemTapped,
      ),
    );
  }
}
