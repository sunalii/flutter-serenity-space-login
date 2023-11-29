import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_serenity_space_login/login_register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Rubik",
        primaryColor: const Color(0xFF3D9AE2),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF3D9AE2),
          secondary: Color(0xFF061017),
        ),
        useMaterial3: true,
      ),
      home: const OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 26),
              Image.asset("assets/images/ic_launcher.png", scale: 6),
              const SizedBox(height: 27),
              const Center(
                child: Text(
                  "Welcome to",
                  style: TextStyle(
                    color: Color(0xFF061017),
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "Serenity Space",
                  style: TextStyle(
                    color: Color(0xFF3D9AE2),
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Text(
                  "Your Oasis of Peace and Mindfulness",
                  style: TextStyle(
                    color: const Color(0xFF061017).withOpacity(0.8),
                    fontWeight: FontWeight.w300,
                    fontFamily: "Rubik",
                    fontSize: 14,
                  ),
                ),
              ),
              const Spacer(),
              Image.asset("assets/images/meditation.png", scale: 2.5),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: MaterialButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const LoginRegisterPage(initialIndex: 0),
                    ),
                  ),
                  color: const Color(0xFF3D9AE2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  minWidth: double.infinity,
                  height: 48,
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(
                    color: const Color(0xFF061017).withOpacity(0.8),
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign In",
                      style: const TextStyle(
                        color: Color(0xFF3D9AE2),
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const LoginRegisterPage(initialIndex: 1),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).padding.bottom),
            ],
          ),
        ),
      ),
    );
  }
}
