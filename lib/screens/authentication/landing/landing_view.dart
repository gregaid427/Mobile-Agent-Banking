import 'package:adb_agent_banking/screens/authentication/sign_in/sign_in_view.dart';
import 'package:adb_agent_banking/screens/components/primary_button.dart';

import 'package:flutter/material.dart';

import 'package:adb_agent_banking/screens/main/home_screen.dart';
import 'package:adb_agent_banking/core/enums/textfield_type.dart';
import 'package:adb_agent_banking/screens/components/custom_textfield.dart';
import '../sign_up/sign_up_view.dart';

class Landing_view extends StatefulWidget {
  const Landing_view({Key? key}) : super(key: key);

  @override
  State<Landing_view> createState() => _Landing_viewState();
}

class _Landing_viewState extends State<Landing_view> {
  final _formKey = GlobalKey<FormState>();
  late String _username, _password;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              "assets/images/h1.png",
            ),
            fit: BoxFit.cover,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Expanded(
                child: Center(

                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 150),
                        const Text(
                          'Welcome to',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                        const Text(
                          'ADB Agent App',
                          style: TextStyle(color: Colors.white, fontSize: 33),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            Container(
                              width: double.infinity,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  // minimumSize: Size(double.infinity, 0),
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.all(15.0),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SignInView();
                                      },
                                    ),
                                  );
                                },
                                child: const Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 15),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              width: double.infinity,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  // minimumSize: Size(double.infinity, 0),
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.all(15.0),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SignUpView();
                                      },
                                    ),
                                  );
                                },
                                child: const Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 23.0),
                child: Image(
                  image: AssetImage(
                    "assets/images/adb_logo2.png",
                  ),
                  fit: BoxFit.fill,
                  width: 120.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
