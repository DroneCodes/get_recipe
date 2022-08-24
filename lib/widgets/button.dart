import 'package:flutter/material.dart';
import 'package:get_recipe/screens/home.dart';
import 'package:get_recipe/utils/colors.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return const HomeScreen();
          }));
        },
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: const Text(
            "Get Started",
            style: TextStyle(
              color: welcometextColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          width: 125,
          height: 50,
        ),
      ),
    );
  }
}
