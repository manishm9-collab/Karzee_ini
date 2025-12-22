import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'signup.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Welcome Back',
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ),
                  );
                },
                child: Text('Login'),
              ),
              SizedBox(height: 12),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  );
                },
                child: Text('Create an account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
