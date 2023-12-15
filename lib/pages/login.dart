import 'package:advanc_task_10/utils/color_utils.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.badgeColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 50,
            ),
            child: Center(
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(20),
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 251, 253),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            labelText: "EMAIL",
                            labelStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff727C8E),
                            ),
                            hintText: "aalaahesha1@mail.com",
                            icon: Icon(Icons.mail_outline,
                                color: Color(0xFF3F3D56)),
                            border: InputBorder.none),
                      ),
                      SizedBox(height: 12.0),
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff727C8E),
                            ),
                            hintText: "aalaahesham 789",
                            icon: Icon(Icons.person_outline,
                                color: ColorsUtil.iconColor),
                            border: InputBorder.none),
                      ),
                    ]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(8),
            height: 50,
            width: 50,
            child: ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffFF6969),
                //padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {},
              child: const Text('Log In'),
            ),
          ),
        ],
      ),
    );
  }
}
