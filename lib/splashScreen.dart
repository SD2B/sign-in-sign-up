import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:signinsignup/constants.dart';
import 'package:signinsignup/loginPage.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  isLogin() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      isLogin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/image/bg.jpg'), // Replace with your image path
              fit: BoxFit.cover, // You can change the fit as needed
            ),
          ),
          child: Container(
            color: Colors.black.withOpacity(0.7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                        text: '.',
                        style: TextStyle(color: Colors.white,fontSize: 160,fontWeight: FontWeight.normal),
                        children: [
                          TextSpan(
                            text: 'Store ',
                            style: TextStyle(color: Colors.green[200],fontSize: 40,fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'Name',
                            style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '.',
                            style: TextStyle(color: Colors.green[200],fontSize: 160,fontWeight: FontWeight.normal),
                          ),
                        ]
                    )
                ),
                Center(
                  child: LoadingAnimationWidget.flickr(
                    size: 100,
                    leftDotColor: green200,
                    rightDotColor: Colors.white,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
