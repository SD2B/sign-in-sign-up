import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:signinsignup/constants.dart';
import 'package:signinsignup/customClass.dart';
import 'package:signinsignup/registerPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/image/bg.jpg'), // Updated path to the PNG image
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Color.fromRGBO(0, 0, 0, 0.8),
          padding: EdgeInsets.all(20),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 60),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 22,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green[200],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value!.isEmpty)
                      return 'Mandatory';
                    else
                      return null;
                  },
                  labelText: 'Username',
                  labelStyle: labelStyle,
                  cursorColor: cursorColor,
                  enabledBorder: enabledBoarder,
                  focusedBorder: focusedBoarder,
                  errorBorder: errorBoarder,
                  focusedErrorBorder: focusedErrorBoarder,
                  controller: _emailController,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value!.isEmpty)
                      return 'Mandatory';
                    else
                      return null;
                  },
                  controller: _passwordController,
                  obscureText: true,
                  labelText: 'Password',
                  labelStyle: labelStyle,
                  cursorColor: cursorColor,
                  enabledBorder: enabledBoarder,
                  focusedBorder: focusedBoarder,
                  errorBorder: errorBoarder,
                  focusedErrorBorder: focusedErrorBoarder,
                ),
                SizedBox(
                  height: 20,
                ),
                AnimatedButton(
                  height: 50,
                  width: 100,
                  text: 'Login',
                  isReverse: true,
                  selectedTextColor: Colors.white,
                  selectedBackgroundColor: Colors.green,
                  transitionType: TransitionType.TOP_CENTER_ROUNDER,
                  textStyle: TextStyle(color: Colors.white, fontSize: 20),
                  backgroundColor: greenbg,
                  borderColor: Colors.white,
                  borderRadius: 50,
                  borderWidth: 1,
                  onPress: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onLongPress: () {},
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.green[200],
                      fontSize: 20,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                  },
                  child: Text(
                    '-Create New Account-',
                    style: TextStyle(
                      color: Colors.green[200],
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
