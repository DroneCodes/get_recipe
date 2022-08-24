import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_recipe/screens/home.dart';
import 'package:get_recipe/utils/colors.dart';
import 'package:get_recipe/widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobilebackgroundColor,
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/pan.png",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Cook Like",
              style: TextStyle(
                color: welcometextColor,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              "A Chef",
              style: TextStyle(
                color: welcometextColor,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Cook professional dishes",
              style: TextStyle(
                color: welcometextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Right in your kitchen",
              style: TextStyle(
                color: welcometextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const WelcomeButton(),
          ],
        ),
      ),
    );
  }
}
