import 'package:flutter/material.dart';
import 'package:onboarding_login_register_app_ui/background_decoration_2.dart';
import 'package:onboarding_login_register_app_ui/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _confirmPasswordFocusNode = FocusNode();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
                SizedBox(height: 100),
                Center(
                  child: Text(
                    'Create Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 34, 67, 185),
                      height: 1.4,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Create an account so you can explore all the\nexisting jobs',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                    height: 1.4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 55),
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
            color: Color.fromRGBO(224, 226, 234, 1),
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
            color: Color.fromRGBO(224, 226, 234, 1),
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

        SizedBox(height: 25),

        // Confirm Password TextField
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(224, 226, 234, 1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color:
                  _confirmPasswordFocusNode
                      .hasFocus // Thay đổi từ _passwordFocusNode
                  ? const Color.fromARGB(255, 34, 67, 185)
                  : Colors.transparent,
              width: 2,
            ),
          ),
          child: TextField(
            controller:
                _confirmPasswordController, // Thay đổi từ _passwordController
            focusNode:
                _confirmPasswordFocusNode, // Thay đổi từ _passwordFocusNode
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Confirm Password',
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

        SizedBox(height: 50),

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

        // Already have an Account Link
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: Text(
            'Already have an account',
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
              iconPath: 'assets/images/google-black-icon.png',
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
    IconData? icon,
    String? iconPath,
    required VoidCallback onPressed,
  }) {
    return Container(
      width: 60,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: iconPath != null
            ? Image.asset(iconPath, width: 20, height: 20)
            : Icon(icon, size: 25, color: Colors.black),
      ),
    );
  }
}
