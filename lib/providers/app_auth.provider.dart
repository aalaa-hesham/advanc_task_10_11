import 'dart:math';

import 'package:advanc_task_10/pages/auth/signup.dart';
import 'package:advanc_task_10/pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class AppAuthProvider extends ChangeNotifier {
  late GlobalKey<FormState> formKey;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool obscureText = true;

  void init() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void providerDispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  void toggleObscure() {
    obscureText = !obscureText;
    notifyListeners();
  }

  Future<void> login(BuildContext context) async {
    if ((formKey.currentState?.validate() ?? false)) {
      try {
        var credintials = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        if (credintials.user != null) {
           if (context.mounted) {
             Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const Home()));
            }
        
        } else { await QuickAlert.show(
                context: context,
                type: QuickAlertType.error,
                title: 'Error In Signup');}
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
        } else if (e.code == 'wrong-password') {}
      } catch (e) {}
    }
  }

    Future<void> signup(BuildContext context) async {
    if ((formKey.currentState?.validate() ?? false)) {
      try {
        var credintials = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        if (credintials.user != null) {
             await QuickAlert.show(
                context: context,
                type: QuickAlertType.success,
                title: 'You Signup Successfully');

            if (context.mounted) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => const Home()));
            }
        } else { await QuickAlert.show(
                context: context,
                type: QuickAlertType.error,
                title: 'Error In Signup');}
      } on FirebaseAuthException catch (e) {
        if (e.code == 'email-already-in-use') {
        } else if (e.code == 'weak-password') {}
      } catch (e) {}
    }
  }
   void openSignupPage(BuildContext context) {
    if (context.mounted) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const Signup()));
    }
  }
}
