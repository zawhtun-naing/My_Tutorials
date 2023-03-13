import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    List<Contact> _list = List.generate(51, (index) {
      return Contact(
          name: "$index",
          phone: "Phone is $index",
          address: "Address is $index");
    });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Phone Contact"),
          leading: const Icon(Icons.contact_page),
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text("Save SnackBar"),
                    duration: const Duration(seconds: 3),
                    action: SnackBarAction(
                      label: "undo",
                      onPressed: () {},
                      textColor: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                  ));
                },
                icon: const Icon(Icons.save)),
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text("Setting SnackBar"),
                    duration: const Duration(seconds: 3),
                    action: SnackBarAction(
                      label: "undo",
                      onPressed: () {},
                      textColor: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                  ));
                },
                icon: const Icon(Icons.settings))
          ],
          backgroundColor: Colors.black,
          toolbarHeight: 60,
          shadowColor: Colors.black,
          elevation: 20,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Icon(Icons.home),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: _list.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(_list[index].name),
                    subtitle: Text(_list[index].phone!),
                    trailing: Text(_list[index].address!),
                  ),
                );
              }),
        ));
  }
}

class Contact {
  final String name = "Maung Maung";
  final String? phone;
  final String? address;

  Contact({name, this.phone, this.address});
}
