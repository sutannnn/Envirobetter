import 'package:flutter/material.dart';
import 'package:flutter_application_1/start/signin.dart';
import 'package:flutter_application_1/start/verif.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import '../atributs/mybutton.dart';
import '../atributs/mytextfield.dart';
import '../data/datarole.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({super.key, required this.role});

  final Role role;

  @override
  State<MySignUp> createState() => _MySignUpState(role);
}

class _MySignUpState extends State<MySignUp> {
  _MySignUpState(this.role);

  bool? check = false;
  final Role role;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
            child: Container(
                child: Image.asset(role.img)),
            preferredSize: Size.fromHeight(200)),
        flexibleSpace: Container(
          height: 290,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/appbar.png'), fit: BoxFit.fill)),
        ),
      ),
      bottomNavigationBar: Image.asset('images/bottom.png', fit: BoxFit.fill,),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 8,),
              Text(
                "Welcome! Sign In",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8,),
              MyTextField(tx: "Enter your email address", ic: Icons.mail),
              SizedBox(height: 8,),
              MyTextField(tx: "Enter your full name", ic: Icons.person),
              SizedBox(height: 8,),
              MyTextField(tx: "Enter your password", ic: Icons.lock_outline),
              SizedBox(height: 8,),
              Column(children: [
                MyTextField(
                  tx: "Confirm your password",
                  ic: Icons.lock_outline,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 0.7,
                      child: Checkbox(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                        //only check box
                        value: check, //unchecked
                        onChanged: (bool? value) {
                          //value returned when checkbox is clicked
                          setState(() {
                            check = value;
                          });
                      }),
                    ),
                    const Text(
                      "By registering, I have read and agreed to\nthe Terms of Use and Privacy Police",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ]),
              MyButton(
                  tx: "Sign Up",
                  fs: 16,
                  txc: Colors.white,
                  elc: Color.fromRGBO(0, 74, 34, 1),
                  minSz: Size(210, 40),
                  cl: MyVerif(role: role,)),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 75,
                      child: Divider(
                        color: Colors.black,
                        height: 2,
                      )),
                  Text(" OR "),
                  Container(
                      width: 75,
                      child: Divider(
                        color: Colors.black,
                        height: 2,
                      ))
                ],
              ),
              SizedBox(height: 10,),
              Text("Continue with"),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SignInButton.mini(
                    buttonType: ButtonType.google, onPressed: () {}),
                SignInButton.mini(
                    buttonType: ButtonType.facebook, onPressed: () {})
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Akready have an account? "),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MySignIn(role: role))
                        );
                      },
                      child: Text("Sign In"),
                      style: TextButton.styleFrom(
                        primary: Color.fromRGBO(35, 68, 105, 1),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
