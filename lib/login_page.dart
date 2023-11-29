import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 36),

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
          const Spacer(),

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
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Rubik",
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 24),

          /// Forgot Password
          const Center(
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: Color(0xFF3D9AE2),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
