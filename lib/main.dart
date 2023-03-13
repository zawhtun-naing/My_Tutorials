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
  List<String> _major = ["Myanmar", "English", "Physics", "Chemistry"];
  String _majorchoose = "Myanmar";
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
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "Choose your favorite major-",
              style: TextStyle(
                color: Colors.pink,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            children: [
              Radio<String>(
                  value: _major[0],
                  groupValue: _majorchoose,
                  onChanged: (val) {
                    setState(() {
                      _majorchoose = val!;
                    });
                  }),
              Text(
                "Myanmar",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Radio<String>(
                  value: _major[1],
                  groupValue: _majorchoose,
                  onChanged: (val) {
                    setState(() {
                      _majorchoose = val!;
                    });
                  }),
              Text(
                "English",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Radio<String>(
                  value: _major[2],
                  groupValue: _majorchoose,
                  onChanged: (val) {
                    setState(() {
                      _majorchoose = val!;
                    });
                  }),
              Text(
                "Physics",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Radio<String>(
                  value: _major[3],
                  groupValue: _majorchoose,
                  onChanged: (val) {
                    setState(() {
                      _majorchoose = val!;
                    });
                  }),
              Text(
                "Chemistry",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "Your major is $_majorchoose",
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
