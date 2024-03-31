import 'package:fieldapp/Widget/UserAccountWidget.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserAccount(),
    );
  }
}
