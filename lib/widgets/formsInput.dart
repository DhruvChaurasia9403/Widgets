import 'package:flutter/material.dart';
class formInput extends StatefulWidget {
  const formInput({super.key});

  @override
  State<formInput> createState() => _formInputState();
}

class _formInputState extends State<formInput> {
  String name = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();



  //-----------Functions----------------
  void trySubmit(){
    final isValid = _formKey.currentState!.validate();
    if(isValid){
      SubmitFrom();
    }
    else{
      print( 'error');
    }
  }
   SubmitFrom(){
    _formKey.currentState!.save();
    print(name);
    print(email);
    print(password);
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Input'),
      ),
      body:Center(
        child:Container(
          margin:EdgeInsets.all(20),
          child:Form(
            key:_formKey,
            child:Column(
              children : [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    key:ValueKey('name'),
                    decoration: InputDecoration(
                      labelText: 'Enter your name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    validator:(value){
                      if(value.toString().isEmpty){
                        return 'Please enter your name';
                      }
                      else{
                        return null;
                      }
                    }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    key : ValueKey('email'),
                    decoration:InputDecoration(
                      labelText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    validator:(value){
                      if(value.toString().isEmpty){
                        return 'Please enter your email';
                      }
                      else{
                        return null;
                      }
                    }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    key: ValueKey('password'),
                    decoration:InputDecoration(
                      labelText : 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    validator:(value){
                      if(value.toString().isEmpty){
                        return 'Please enter your password';
                      }
                      else{
                        return null;
                      }
                    }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: (){
                        trySubmit();
                      },
                      child: Text('Submit'),
                    )
                  ),
                )
              ]
            )
          )
        )
      ),
    );
  }
}
