import 'package:flutter/material.dart';
import 'package:project_62b/widgets/input_field.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProfilePage"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.blueGrey[300]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputField(
                controller: nameController,
                keyboardType: TextInputType.text,
                label: "Name",
                hint: "Enter Name",
                icon: Icons.person,
              ),

              InputField(
                controller: emailController,
                keyboardType: TextInputType.visiblePassword,
                label: "Email",
                hint: "Enter Email",
                icon: Icons.email,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  name = "Name is: ${nameController.text}";
                  setState(() {});
                },
                child: Text("Submit"),
              ),
              SizedBox(height: 20),

              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
