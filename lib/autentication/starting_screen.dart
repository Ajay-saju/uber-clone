import 'package:driver/autentication/sign_up.dart';
import 'package:driver/constants/app_colors.dart';
import 'package:driver/main_screens/mainscreen.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('asset/Stating page.jpg'),
              ),
            ),
            h20,
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => SignUpPage()));
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  color: navBarColor,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: AlignmentDirectional.bottomCenter,
                      colors: [
                        navBarColor,
                        Colors.black87,
                      ]),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Get Started",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          )),
                      w10,
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        // children: [
        //   ElevatedButton(
        //       onPressed: () {},
        //       child: Text(
        //         'Get Started',
        //         style: TextStyle(fontSize: 20),
        //       )),
        //   h50,
        // ],
      ),
    );
  }
}
