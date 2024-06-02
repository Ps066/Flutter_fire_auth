import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _email;
  late String _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),

      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (email_value) {
                  if (email_value == null || email_value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),


                onSaved: (email_value) => _email = (email_value)!,
              ),
              TextFormField(
                validator: (pass_value) {
                  if (pass_value!.length < 6) {
                    return 'Your password must be atleast of 6 digits';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Password"
                ),
                onSaved: (pass_value) => _password = (pass_value)!,
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formkey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
