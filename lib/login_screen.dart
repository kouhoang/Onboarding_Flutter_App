import 'package:flutter/material.dart';
import 'package:onboarding_login_register_app_ui/background_decoration_2.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: Stack(
        children: [
          BackgroundDecoration2(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
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
                Text(
                  'Welcome back you\'ve\nbeen missed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                    height: 1.4,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 75),
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
        // Email TextField
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(239, 240, 244, 1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: _emailFocusNode.hasFocus
                  ? const Color.fromARGB(255, 34, 67, 185)
                  : Colors.transparent,
              width: 2,
            ),
          ),
          child: TextField(
            controller: _emailController,
            focusNode: _emailFocusNode,
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
            ),
            onTap: () {
              setState(() {});
            },
            onEditingComplete: () {
              setState(() {});
            },
          ),
        ),

        SizedBox(height: 25),

        // Password TextField
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(239, 240, 244, 1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: _passwordFocusNode.hasFocus
                  ? const Color.fromARGB(255, 34, 67, 185)
                  : Colors.transparent,
              width: 2,
            ),
          ),
          child: TextField(
            controller: _passwordController,
            focusNode: _passwordFocusNode,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
            ),
            onTap: () {
              setState(() {});
            },
            onEditingComplete: () {
              setState(() {});
            },
          ),
        ),

        SizedBox(height: 15),

        // Forgot Password Link
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              // Handle forgot password
            },
            child: Text(
              'Forgot your password?',
              style: TextStyle(
                color: const Color.fromARGB(255, 34, 67, 185),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        SizedBox(height: 20),

        // Sign In Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Handle sign in
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 34, 67, 185),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 0,
            ),
            child: Text(
              'Sign in',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        SizedBox(height: 25),

        // Create New Account Link
        TextButton(
          onPressed: () {
            // Handle create new account
          },
          child: Text(
            'Create new account',
            style: TextStyle(
              color: const Color.fromARGB(255, 65, 65, 65),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        SizedBox(height: 50),

        // Or continue with text
        Text(
          'Or continue with',
          style: TextStyle(
            color: const Color.fromARGB(255, 34, 67, 185),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 20),

        // Social Login Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialButton(
              icon: Icons.g_mobiledata,
              onPressed: () {
                // Handle Google login
              },
            ),
            SizedBox(width: 10),
            _buildSocialButton(
              icon: Icons.facebook,
              onPressed: () {
                // Handle Facebook login
              },
            ),
            SizedBox(width: 10),
            _buildSocialButton(
              icon: Icons.apple,
              onPressed: () {
                // Handle Apple login
              },
            ),
          ],
        ),

        SizedBox(height: 40),
      ],
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      width: 60,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: 25, color: Colors.black),
      ),
    );
  }
}
