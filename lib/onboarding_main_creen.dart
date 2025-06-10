import 'package:flutter/material.dart';
import 'package:onboarding_login_register_app_ui/background_decoration.dart';
import 'package:onboarding_login_register_app_ui/login_screen.dart';

class OnboardingMainScreen extends StatelessWidget {
  const OnboardingMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: Stack(
        children: [
          BackgroundDecoration(),
          Column(
            children: [
              Center(
                child: SizedBox(
                  width: 360,
                  height: 480,
                  child: Image.asset('assets/images/welcome_image.png'),
                ),
              ),

              Expanded(flex: 2, child: _buildContentSection(context)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContentSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        children: [
          // Title
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 0), // Padding from top
                // Title
                Text(
                  'Discover Your\nDream Job here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 31, 65, 187),
                    height: 1.4,
                  ),
                ),

                SizedBox(height: 16),

                // Subtitle
                Text(
                  'Explore all the existing job roles based on your\ninterest and study major',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),

          Expanded(child: Container()),

          // Button
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            31,
                            65,
                            187,
                          ),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 16),

                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Navigate to register
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Color(0xFF2C2C2C),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 90),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
