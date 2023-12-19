import 'package:advanc_task_10/providers/app_auth.provider.dart';
import 'package:advanc_task_10/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> with AutomaticKeepAliveClientMixin {
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
    super.build(context);

    return Scaffold(
      backgroundColor: ColorsUtil.badgeColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Consumer<AppAuthProvider>(builder: (ctx, appAuthProvider, _) {
          return Form(
            key: appAuthProvider.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 30,
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
                              controller: appAuthProvider.emailController,
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
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "UserName",
                                    labelStyle: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff727C8E),
                                    ),
                                    hintText: "aalaahesham 789",
                                    icon: Icon(Icons.person_outline,
                                        color: ColorsUtil.iconColor),
                                    border: InputBorder.none),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                Center(
                  child: Flexible(
                    child: Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(10),
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 251, 253),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: TextField(
                              controller: appAuthProvider.passwordController,
                                obscureText: appAuthProvider.obscureText,
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      appAuthProvider.toggleObscure();
                                    },
                                    child: appAuthProvider.obscureText
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(Icons.visibility),
                                  ),
                                  labelStyle: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff727C8E),
                                  ),
                                  hintText: "*****************",
                                  icon: Icon(Icons.lock_outline,
                                      color: Color(0xFF3F3D56)),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(2),
                    height: 70,
                    width: 350,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffFF6969),
                        //padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () async {
                        await appAuthProvider.signup(context);
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 90,
                          ),
                          Center(child: Text('SIGN UP')),
                          SizedBox(
                            width: 100,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_right,
                              color: Colors.red,
                              weight: 100,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  height: 20,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "By creating an account, you agree to our ",
                        style:
                            TextStyle(color: Color(0xff515C6F), fontSize: 12),
                      ),
                      Text(
                        "Terms of Service",
                        style:
                            TextStyle(color: Color(0xffFF6969), fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "and",
                      style: TextStyle(color: Color(0xff515C6F), fontSize: 12),
                    ),
                    Text(
                      " Privacy Policy",
                      style: TextStyle(color: Color(0xffFF6969), fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
