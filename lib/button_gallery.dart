import 'package:flutter/material.dart';
import 'package:flutter_button_navigation/profile_screen.dart';

import 'add_screen.dart';
import 'login_screen.dart';

class ButtonGallery extends StatelessWidget {
  const ButtonGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Gallery')),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Basic Buttons',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()),
                  );
                },
                child: Text('Profile'),
              ),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/details');
                },
                child: Text('Details'),
              ),
              FilledButton.tonal(
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                child: Text('Settings'),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddScreen()),
                  );
                },
                child: Text('Add Screen'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text('Logout'),
              ),

              SizedBox(height: 16),
              Text('Icon Buttons',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),

              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/details');
                },
                icon: Icon(Icons.info),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/add');
                },
                icon: Icon(Icons.add),
                label: Text('Add'),
              ),

              SizedBox(height: 16),
              Text('Custom Button',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('My Profile'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}