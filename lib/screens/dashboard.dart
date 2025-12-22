import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        title: Row(
          children: [
            Text(
              'karzee',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 30),
            _navItem('Explore'),
            _navItem('Jobs'),
            _navItem('Freelancers'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text(
              'Sign in',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            ),
            child: Text('Join'),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          // HERO SECTION
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0A3D2E),
                  Color(0xFF0F6B4A),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'A trusted platform\nfor freelancers & clients',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Find talent. Find work. All in one place.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 30),

                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                            horizontal: 24, vertical: 14),
                      ),
                      child: Text('Browse Jobs'),
                    ),
                    SizedBox(width: 12),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: BorderSide(color: Colors.white),
                        padding: EdgeInsets.symmetric(
                            horizontal: 24, vertical: 14),
                      ),
                      child: Text('Post a Project'),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                Container(
                  width: 420,
                  height: 48,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search skills or services',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // CATEGORIES
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular Categories',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _categoryCard(Icons.brush, 'Design'),
                      _categoryCard(Icons.code, 'Development'),
                      _categoryCard(Icons.campaign, 'Marketing'),
                      _categoryCard(Icons.edit, 'Writing'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _categoryCard(IconData icon, String title) {
    return Container(
      width: 160,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Icon(icon, size: 32),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
