import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:signinsignup/constants.dart';
import 'package:signinsignup/customClass.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _emailController = TextEditingController();


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
          padding: EdgeInsets.only(top: 70,left: 20,right: 20,),
          height: double.infinity,
          child: SingleChildScrollView(
            child: Form(
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Register',
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
                  SizedBox(height: 10,),
                  CustomTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Mandatory';
                      } else {
                        return null;
                      }
                    },
                    controller: _nameController,
                    labelText: 'Name',
                    labelStyle: labelStyle,
                    cursorColor: cursorColor,
                    enabledBorder: enabledBoarder,
                    focusedBorder: focusedBoarder,
                    errorBorder: errorBoarder,
                    focusedErrorBorder: focusedErrorBoarder,
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    color: Colors.black12,
                    child: Column(
                      children: [
                        Text('Gender',style: TextStyle(color: Colors.green[200],fontWeight: FontWeight.bold,fontSize: 15),),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 150,
                                child: RadioListTile(
                                    activeColor: Colors.green,
                                    title: Text(
                                      'Male',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    value: 'male',
                                    groupValue: '',
                                    onChanged: (value) {
                                    }),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 160,
                                child: RadioListTile(
                                    activeColor: Colors.green,

                                    title: Text('Female',
                                        style: TextStyle(color: Colors.white)),
                                    value: 'female',
                                    groupValue: '',
                                    onChanged: (value) {

                                    }),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),//gender
                  SizedBox(
                    height: 10,
                  ),// ender-container
                  CustomTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Mandatory';
                      } else {
                        return null;
                      }
                    },
                    controller: _addressController,
                    labelText: 'Address',
                    labelStyle: labelStyle,
                    maxlines: 4,
                    cursorColor: cursorColor,
                    enabledBorder: enabledBoarder,
                    focusedBorder: focusedBoarder,
                    errorBorder: errorBoarder,
                    focusedErrorBorder: focusedErrorBoarder,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Mandatory';
                      } else {
                        return null;
                      }
                    },
                    controller: _phoneController,
                    labelText: 'Phone Number',
                    labelStyle: labelStyle,
                    cursorColor: cursorColor,
                    enabledBorder: enabledBoarder,
                    focusedBorder: focusedBoarder,
                    errorBorder: errorBoarder,
                    focusedErrorBorder: focusedErrorBoarder,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Mandatory';
                      } else {
                        return null;
                      }
                    },
                    controller: _emailController,
                    labelText: 'Email',
                    labelStyle: labelStyle,
                    cursorColor: cursorColor,
                    enabledBorder: enabledBoarder,
                    focusedBorder: focusedBoarder,
                    errorBorder: errorBoarder,
                    focusedErrorBorder: focusedErrorBoarder,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Mandatory';
                      } else {
                        return null;
                      }
                    },
                    controller: _passwordController,
                    obscureText: true,
                    labelText: 'Password(minimum 6 characters)',
                    labelStyle: labelStyle,
                    cursorColor: cursorColor,
                    enabledBorder: enabledBoarder,
                    focusedBorder: focusedBoarder,
                    errorBorder: errorBoarder,
                    focusedErrorBorder: focusedErrorBoarder,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AnimatedButton(
                      height: 50,
                      width: 100,
                      text: 'Register',
                      isReverse: true,
                      selectedTextColor: Colors.white,
                      selectedBackgroundColor: Colors.green,
                      transitionType: TransitionType.TOP_CENTER_ROUNDER,
                      textStyle: TextStyle(color: Colors.white, fontSize: 20),
                      backgroundColor: greenbg,
                      borderColor: Colors.white,
                      borderRadius: 50,
                      borderWidth: 1,
                      onPress: () {
                      }),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      '-Already have an Account?-',
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
      ),
    );
  }

}
