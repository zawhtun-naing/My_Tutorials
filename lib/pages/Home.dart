import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Scaffold(
            key: key,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (ind) {Navigator.pushNamed(context, '/about');},
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "About", icon: Icon(Icons.person)),
            BottomNavigationBarItem(label: "Register", icon: Icon(Icons.app_registration))
          ],
        ),
        appBar: AppBar(
          title: const Text("Profile UI"),
          // leading: const Icon(Icons.production_quantity_limits),
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
          // shape: const RoundedRectangleBorder(
          //     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
        ),
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 340,
                  width: double.infinity,
                  color: Color.fromARGB(255, 2, 48, 70),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    backgroundImage: AssetImage("images/7.jpg"),
                  ),
                ),
                Positioned(
                  top: 235,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Text(
                        "Zaw Htun Naing",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Flutter Developer(Rakhine)",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  left: 20,
                  bottom: -50,
                  child: Card(
                    elevation: 9.0,
                    child: CardRow(),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Card(
                color: Colors.white70,
                elevation: 20,
                child: Column(
                  children: const [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/6.jpg"),
                      ),
                      title: Text(
                        "Ronaldo",
                        style: TextStyle(
                          color: Color.fromARGB(255, 2, 48, 70),
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 2, 48, 70),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/1.jpg"),
                      ),
                      title: Text(
                        "Jone Warry",
                        style: TextStyle(
                          color: Color.fromARGB(255, 2, 48, 70),
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 2, 48, 70),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/2.jpg"),
                      ),
                      title: Text(
                        "Biden",
                        style: TextStyle(
                          color: Color.fromARGB(255, 2, 48, 70),
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 2, 48, 70),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/7.jpg"),
                      ),
                      title: Text(
                        "Elezebat",
                        style: TextStyle(
                          color: Color.fromARGB(255, 2, 48, 70),
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 2, 48, 70),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Widget CardRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        CardColumn(
          "Photo",
          "500",
        ),
        Container(
          height: 40,
          width: 2,
          color: Colors.black,
        ),
        CardColumn("Followers", "5.90k"),
        Container(
          height: 40,
          width: 2,
          color: Colors.black,
        ),
        CardColumn("Following", "2k"),
      ],
    );
  }

  Widget CardColumn(String title, String message) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 2, 48, 70)),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          message,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 2, 48, 70)),
        )
      ],
    );
  }
}
