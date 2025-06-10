import 'package:flutter/material.dart';
import 'package:onboarding_login_register_app_ui/background_decoration.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: Stack(
        children: [
          BackgroundDecoration(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(height: 90),
                Center(
                  child: Text(
                    'Login here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 34, 67, 185),
                      height: 1.4,
                    ),
                  ),
                ),

                SizedBox(height: 28),

                // Subtitle
                Text(
                  'Welcome back you`ve\nbeen missed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                    height: 1.4,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 90),

                Expanded(flex: 2, child: _buildLoginTextFieldSection(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginTextFieldSection(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(245, 245, 245, 1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xFFE5E5EA), width: 1),
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 16, color: Color(0xFF1D1D1F)),
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Color.fromARGB(255, 87, 86, 86),
                fontSize: 16,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),

        SizedBox(height: 16),

        // Password TextField
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F7),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xFFE5E5EA), width: 1),
          ),
          child: TextField(
            obscureText: true,
            style: TextStyle(fontSize: 16, color: Color(0xFF1D1D1F)),
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Color.fromARGB(255, 87, 86, 86),
                fontSize: 16,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),
      ],
    );
  }
}
