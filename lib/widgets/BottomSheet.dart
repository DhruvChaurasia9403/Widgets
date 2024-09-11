import 'package:flutter/material.dart';
class bottom extends StatelessWidget {
  const bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
        elevation: 10,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:ElevatedButton(
          child: Text('Show Bottom Sheet'),
          onPressed: (){
            showModalBottomSheet(
              backgroundColor: Colors.blue,
              context: context,
              builder: (BuildContext context){
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      title: Text('Item 1'),
                      subtitle: Text('Subtitle 1'),
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      title: Text('Item 2'),
                      subtitle: Text('Subtitle 2'),
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      title: Text('Item 3'),
                      subtitle: Text('Subtitle 3'),
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      title: Text('Item 4'),
                      subtitle: Text('Subtitle 4'),
                    )
                  ],
                );
              }
            );
          },
        )
      ),
    );
  }
}
