import 'package:adb_agent_banking/screens/components/primary_button.dart';

import 'package:flutter/material.dart';


import 'package:adb_agent_banking/screens/main/home_screen.dart';
import 'package:adb_agent_banking/core/enums/textfield_type.dart';
import 'package:adb_agent_banking/screens/components/custom_textfield.dart';
import '../sign_up/sign_up_view.dart';



class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
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
              "assets/images/T1.jpg",
            ),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Log In',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                const SizedBox(height: 10),
                Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const[
                          CustomTextField(
                            hintText: 'Username',
                            obscure: false,
                            type: TextFieldType.name,
                            inputType: TextInputType.text,
                          ),

                          SizedBox(height: 10),
                          CustomTextField(
                            hintText: 'Password',
                            obscure: true,
                            type: TextFieldType.password,
                            inputType: TextInputType.text,
                            //   suffixFunc: () => model.changePasswordvisibility(),
                          ),
                        ],
                      ),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        // margin: EdgeInsets.only(top: 40),
                        width: double.infinity,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            // minimumSize: Size(double.infinity, 0),
                            backgroundColor:
                                const Color.fromRGBO(27, 113, 57, 1),
                            padding: const EdgeInsets.all(15.0),
                          ),
                          onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomeScreen();
                              },
                            ),
                          );},
                          child: const Text(
                            'Sign In',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SignUpView();
                                      },
                                    ),
                                  );
                                },
                                child: const Text('Create new account',
                                    style: TextStyle(color: Colors.white))),
                            const Text(
                              'Forget Password?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
