// ignore_for_file: prefer_const_constructors

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/auth/auth_service.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  
  final void Function() onTap;

  RegisterPage({super.key, required this.onTap});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final TextEditingController confirmPwdController = TextEditingController();

  void register(BuildContext context) {
    final AuthService authService = AuthService();
    if (pwdController.text == confirmPwdController.text) {
      try {
        authService.signUp(emailController.text, pwdController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(e.toString())
            )
        );
      }
    } else {
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text('Password don\'t match !'),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.app_registration_rounded, 
          size: 60
        ),

        SizedBox(
          height: 48,
        ),

        Text(
          'Create your account',
          style: TextStyle(fontSize: 16),
        ),

        SizedBox(
          height: 24,
        ),

        MyTextfield(
            hintText: 'Email', 
            obscureText: false, 
            controller: emailController,
        ),

        SizedBox(
            height: 16,
        ),
        
        MyTextfield(
            hintText: 'Password',
            obscureText: true,
            controller: pwdController,
        ),

        SizedBox(
            height: 16,
        ),

        MyTextfield(
            hintText: 'Confirm Password',
            obscureText: true,
            controller: confirmPwdController,
        ),

        SizedBox(
          height: 24,
        ),

        MyButton(
          text: 'Register',
          onPressed: () => register(context),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Already have an account ?'),
            TextButton(
              onPressed: onTap,
              child: Text(
                'Login now',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ],
    );
  }
}
