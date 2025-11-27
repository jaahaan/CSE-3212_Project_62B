import 'package:flutter/material.dart';
import 'package:project_62b/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(212, 94, 162, 195),
        foregroundColor: Colors.black,
        title: Text("HomePage"),
        // leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite, color: Colors.red),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        child: Icon(Icons.add),
      ),
      drawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(onTap: () {}, title: Text("HomePage")),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to homepage!!!", style: TextStyle(fontSize: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                      shape: BeveledRectangleBorder(),
                    ),
                    child: Text("Elevated"),
                  ),

                  OutlinedButton(onPressed: () {}, child: Text("Outlined")),

                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    child: Text("Text"),
                  ),
                ],
              ),

              Image.asset('assets/images/flutter.png', height: 300),
              // Image.asset(
              //   'assets/images/images.jpeg',
              //   height: 500,
              //   fit: BoxFit.fill,
              // ),
              // Image.network(
              //   'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&q=60&w=500',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
