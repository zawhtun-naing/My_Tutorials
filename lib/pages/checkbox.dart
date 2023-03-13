import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Check(),
  ));
}

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  List<bool> _checked = [false, false, false, false];
  List<String> _hobbies = ["Myanmar", "English", "Physics", "Chemistry"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box"),
        leading: Icon(Icons.security),
        toolbarHeight: 75,
      ),
      body: Column(
        children: [
          for (int i = 0; i < _checked.length; i++)
            _mycheckbox(_checked[i], _hobbies[i], i),
            Text("My hobbies subject is ${_result()}")
        ],
      ),
    );
  }

  Widget _mycheckbox(bool check, String title, int index) {
    return Row(
      children: [
        Checkbox(
            value: check,
            onChanged: (val) {
              setState(() {
                _checked[index] = val!;
              });
            }),
        Text(title)
      ],
    );
  }
  String _result (){
      String result = "";
      for(int i=0;i<_checked.length;i++)
      if(_checked[i])
      result += "${_hobbies[i]} \n";
      return result;
      
    }
}
