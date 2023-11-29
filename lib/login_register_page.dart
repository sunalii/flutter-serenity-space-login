import 'package:flutter/material.dart';
import 'package:flutter_serenity_space_login/login_page.dart';
import 'package:flutter_serenity_space_login/register_page.dart';

class LoginRegisterPage extends StatelessWidget {
  final int initialIndex;

  const LoginRegisterPage({super.key, required this.initialIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          initialIndex: initialIndex,
          length: 2,
          child: const Column(
            children: [
              TabBar(
                labelStyle: TextStyle(
                  color: Color(0xFF061017),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                unselectedLabelStyle: TextStyle(
                  color: Color(0xFF949494),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                padding: EdgeInsets.symmetric(horizontal: 24),
                indicatorColor: Color(0xFF061017),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Color(0xFFD9D9D9),
                tabs: [
                  Tab(
                    text: "Register",
                  ),
                  Tab(
                    text: "Login",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    RegisterPage(),
                    LoginPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
