import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_serenity_space_login/login_register_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 36),

          /// First Name Field
          const Text(
            "First Name",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF061017),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            cursorColor: const Color(0xFF061017),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xFFF4F4F4),
              filled: true,
              hintText: "Enter your first name",
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF949494),
              ),
            ),
          ),
          const SizedBox(height: 24),

          /// Last Name Field
          const Text(
            "Last Name",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF061017),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            cursorColor: const Color(0xFF061017),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xFFF4F4F4),
              filled: true,
              hintText: "Enter your last name",
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF949494),
              ),
            ),
          ),
          const SizedBox(height: 24),

          /// Email Field
          const Text(
            "Email",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF061017),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            cursorColor: const Color(0xFF061017),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xFFF4F4F4),
              filled: true,
              hintText: "Enter your email",
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF949494),
              ),
            ),
          ),
          const SizedBox(height: 24),

          /// Password Field
          const Text(
            "Password",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF061017),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            obscureText: true,
            cursorColor: const Color(0xFF061017),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              suffixIcon: const Icon(
                Icons.visibility_outlined,
                color: Color(0xFF000000),
              ),
              fillColor: const Color(0xFFF4F4F4),
              filled: true,
              hintText: "Enter your password",
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF949494),
              ),
            ),
          ),
          const SizedBox(height: 24),

          /// Confirm Password Field
          const Text(
            "Confirm Password",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF061017),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            obscureText: true,
            cursorColor: const Color(0xFF061017),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              suffixIcon: const Icon(
                Icons.visibility_outlined,
                color: Color(0xFF000000),
              ),
              fillColor: const Color(0xFFF4F4F4),
              filled: true,
              hintText: "Enter your confirm password",
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF949494),
              ),
            ),
          ),
          const SizedBox(height: 24),

          /// Login Button
          MaterialButton(
            onPressed: () {},
            color: const Color(0xFF3D9AE2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            minWidth: double.infinity,
            height: 48,
            child: const Text(
              "Register",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Rubik",
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 24),

          Center(
            child: RichText(
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
          ),
        ],
      ),
    );
  }
}
