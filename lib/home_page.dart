import 'package:flutter/material.dart';
import 'package:project_62b/converter_page.dart';
import 'package:project_62b/gridview_page.dart';
import 'package:project_62b/listview_page.dart';
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListviewPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      fixedSize: Size(150, 50),
                    ),
                    child: Text("ListView"),
                  ),

                  SizedBox(width: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GridviewPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      fixedSize: Size(150, 50),
                    ),
                    child: Text("GridView"),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConverterPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      fixedSize: Size(150, 50),
                    ),
                    child: Text("Converter"),
                  ),

                  SizedBox(width: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      fixedSize: Size(150, 50),
                    ),
                    child: Text("ProfilePage"),
                  ),
                ],
              ),
              // SizedBox(height: 20),
              SizedBox(
                height: 300,
                width: 300,
                child: Card(
                  color: Colors.amber,
                  child: Center(child: Text("Card")),
                ),
              ),
              Container(
                height: 300,
                width: 300,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(color: Colors.yellowAccent, width: 5),
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                  shape: BoxShape.circle,
                ),
                child: Text("Container"),
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
