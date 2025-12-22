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
  final _formKey = GlobalKey<FormState>();

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
          child: Form(
            key: _formKey,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  label: "Name",
                  hint: "Enter Name",
                  icon: Icons.person,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Field is empty!!";
                    } else if (!RegExp(r"^[A-Za-z .]{3,}$").hasMatch(value)) {
                      return "Invalid Format!!";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                InputField(
                  controller: emailController,
                  keyboardType: TextInputType.visiblePassword,
                  label: "Email",
                  hint: "Enter Email",
                  icon: Icons.email,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Field is empty!!";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState!.validate()) {
                        name = "Name is: ${nameController.text}";
                      }
                    });
                  },
                  child: Text("Submit"),
                ),
                SizedBox(height: 20),

                Text(name),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
