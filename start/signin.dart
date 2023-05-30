import 'package:flutter/material.dart';
import 'package:flutter_application_1/atributs/mybutton.dart';
import 'package:flutter_application_1/atributs/mytextfield.dart';
import 'package:flutter_application_1/dashboard/home.dart';
import 'package:flutter_application_1/dashboard_BS/home.dart';
import 'package:flutter_application_1/forgotpassword/start.dart';
import 'package:flutter_application_1/start/signup.dart';
import 'package:sign_button/sign_button.dart';
import '../data/datarole.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({super.key, required this.role});

  final Role role;

  @override
  State<MySignIn> createState() => _MySignInState(role);
}

class _MySignInState extends State<MySignIn> {
  _MySignInState(this.role);

  bool? check = false;
  final Role role;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
            child: Container(
                child: Image.asset(role.img)),
            preferredSize: Size.fromHeight(180)),
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
              SizedBox(height: 22,),
              Text(
                "Welcome! Sign In",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: MyTextField(tx: "Enter your email address", ic: Icons.mail),
              ),
              Column(
                children: [

                ],
              ),
              MyTextField(
                tx: "Enter your password",
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
                    "Remember me",
                    style: TextStyle(fontSize: 12),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyNewStart(role: role,))
                        );
                      },
                      child: const Text("Forgot Password?",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 11)))
                ],
              ),
              MyButton(
                  tx: "Sign In",
                  fs: 16,
                  txc: Colors.white,
                  elc: Color.fromRGBO(0, 74, 34, 1),
                  minSz: Size(210, 40),
                  cl: role.img == 'images/role11.png'? MyHome() : MyHomeBank()
              ),
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
                  Text("Don't have an account? "),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MySignUp(role: role,))
                        );
                      },
                      child: Text("Sign Up"),
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
