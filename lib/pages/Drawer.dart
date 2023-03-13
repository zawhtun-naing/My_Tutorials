import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _birth = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "About", icon: Icon(Icons.person)),
          BottomNavigationBarItem(
              label: "Register", icon: Icon(Icons.app_registration))
        ],
      ),
      appBar: AppBar(
        title: const Text(
          "Drawer",
          style: TextStyle(fontFamily: 'TiltWarp-Regular.ttf', fontSize: 20),
        ),
        toolbarHeight: 70,
      ),
      drawer: Drawer(
        width: 290,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "Drawer Header",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'TiltWarp-Regular.ttf'),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                leading: Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                title: Text(
                  "Messages",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.blue,
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                leading: Icon(
                  Icons.h_mobiledata,
                  color: Colors.blue,
                ),
                title: Text(
                  "Home Mobile Data",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(children: [
        Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 30),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    backgroundImage: AssetImage("images/nyo.jpg"),
                  ),
                )
              ],
            ),
            TextField(
              controller: _name,
              decoration: InputDecoration(
                  hintText: 'Write Your Name',
                  labelText: 'Name',
                  suffixIcon: Icon(Icons.person)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Write Your Password',
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _phone,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: 'Write Your Phone Number',
                  labelText: 'Phone',
                  suffixIcon: Icon(Icons.phone)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _birth,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                  helperText: "Do You Have Account?",
                  helperStyle: TextStyle(color: Colors.blue, fontSize: 13),
                  hintText: 'Your BirthDay',
                  labelText: 'BirthDay',
                  suffixIcon: Icon(Icons.baby_changing_station)),
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                
              });
            }, child: Text("Save")),Text("Name is ${_name.text} and password is ${_password.text} and phone is ${_phone.text} and Birthday is ${_birth.text}.")
          ],
        ),
      ]),
    );
  }
}
