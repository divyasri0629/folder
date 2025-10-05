import 'package:flutter/material.dart';
import 'app_theme.dart';

class ProfileScreen extends StatelessWidget {
  final String name = 'Kantamani Divya Sri';
  final String rollNo = '23A91A1294 ';
  final String branch = 'Information Technology';
  final String email = '23A91A1294@ace.edu.in';

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.gradientBackground,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Student Profile'),
          centerTitle: true,
        ),
        body: Padding(
          padding:EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:AssetImage('assets/arshiya.png'),
                      backgroundColor: Colors.deepPurple[100],
                    ),
                  ),
                   SizedBox(height: 24),
                  profileLine('Name', name),
                  profileLine('Roll Number', rollNo),
                  profileLine('Branch', branch),
                  profileLine('Email', email),
                  SizedBox(height: 22),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Edit button tapped')),
                        );
                      },
                      icon: const Icon(Icons.edit, color: Colors.deepPurple),
                      label: const Text('Edit',
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple[50],
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(color: Colors.deepPurple),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget profileLine(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Text(
        '$title: $value',
        style:TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }
}