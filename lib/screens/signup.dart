import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Center(
        child: Container(
          width: 350,
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Create Account',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // back to login/dashboard
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
