import 'package:flutter/material.dart';

void main() => runApp(SignUpApp());

class SignUpApp extends StatelessWidget {
  const SignUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignUpScreen extends StatelessWidget {
  final Color mainBlue = Color(0xFF00C6FB);
  final Color lightBlue = Color(0xFF005BEA);

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF6FD),
      body: Center(
  child: SingleChildScrollView(
    child: Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Color(0xFFF1F9FF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 8),
          ),
        ],
      ),
      width: 340,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF005BEA),
            ),
          ),
          SizedBox(height: 30),
          _buildTextField('e-mail'),
          SizedBox(height: 15),
          _buildTextField('password', obscureText: true),
          SizedBox(height: 15),
          _buildTextField('repeat password', obscureText: true),
          SizedBox(height: 15),
          Row(
            children: [
              Checkbox(value: true, onChanged: (_) {}),
              Text('Remember me'),
            ],
          ),
          SizedBox(height: 10),
          Text('Sign up with social account'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialDot(Colors.yellow),
              SizedBox(width: 15),
              _buildSocialDot(Colors.blue),
              SizedBox(width: 15),
              _buildSocialDot(Colors.red),
            ],
          ),
          SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Color(0xFF00C6FB),
              elevation: 5,
            ),
            child: Text('Sign up', style: TextStyle(fontSize: 18)),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: Text(
              'Read User License Agreement',
              style: TextStyle(
                color: Color(0xFF005BEA),
                fontSize: 12,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    ),
  ),
),
    );
  }

  Widget _buildTextField(String hint, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildSocialDot(Color color) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: color,
    );
  }
}
