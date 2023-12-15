import 'package:advanc_task_10/utils/color_utils.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.badgeColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Enter the email address you used to create your account and we will email you a link to reset your password",
                  style: TextStyle(fontSize: 15, color: Color(0xff515C6F)),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              color: const Color.fromARGB(255, 255, 246, 219),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "EMAIL",
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xff727C8E),
                    ),
                    icon: Icon(Icons.mail_outline, color: Color(0xFF3F3D56)),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(255, 235, 215, 209),
                    Color.fromARGB(255, 212, 215, 218),
                  ],
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 198, 189, 189),
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {},
              child: const Text('SEND EMAIL'),
            ),
          ],
        ),
      ),
    );;
  }
}