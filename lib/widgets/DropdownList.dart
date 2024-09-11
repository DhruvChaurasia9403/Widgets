import 'package:flutter/material.dart';
class dropDownList extends StatefulWidget {
  const dropDownList({super.key});

  @override
  State<dropDownList> createState() => _dropDownListState();
}

class _dropDownListState extends State<dropDownList> {
  String selectedValue = 'A';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown List'),
        elevation: 10,
        backgroundColor: Colors.blue,
      ),
      body:Center (
        child:Container (
          width: MediaQuery.of(context).size.width ,
          height: 50,
          padding: EdgeInsets.all(10),
          color: Colors.grey,
          margin: EdgeInsets.all(10),
          child: Align(
            alignment : Alignment.centerRight,
            child: DropdownButton<String>(
              isExpanded:true,
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedValue = value!;
                });
              },
              value: selectedValue,
              icon: Icon(Icons.arrow_drop_down),
            ),
          ),
        )
      )
    );
  }
}
