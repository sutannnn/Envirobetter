import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/atributs/mybutton.dart';
import 'package:flutter_application_1/atributs/mytextfield.dart';
import 'package:flutter_application_1/forgotpassword/newpassword.dart';
import 'package:flutter_application_1/start/signup.dart';
import 'package:sign_button/sign_button.dart';
import '../data/datarole.dart';

class MyVerify extends StatelessWidget {
  MyVerify({
    super.key, required this.role,
  });

  final Role role;
  bool? check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: PreferredSize(
              child: Container(child: Image.asset('images/verify.png')),
              preferredSize: Size.fromHeight(230)),
          flexibleSpace: Container(
            height: 295,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/appbar2.png'), fit: BoxFit.fill)),
          ),
        ),
        bottomNavigationBar: Image.asset(
          'images/bottom.png',
          fit: BoxFit.fill,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("OTP Code Verification", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
              Column(
                children: [
                  Text("Code has been send to"),
                  Text("082166403320"),
                ],
              ),
              Container(
                width: 235,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [MyCode(), MyCode(), MyCode(), MyCode()],
                ),
              ),
              Text("Resend code in 60 s"),
              SizedBox(height: 20,),
              MyButton(tx: "Verify", fs: 16, txc: Colors.white, elc: Color.fromRGBO(40, 103, 83, 1), minSz: Size(230,40), cl: NewPassword(role: role,))
            ],
          ),
        ));
  }
}

class MyCode extends StatelessWidget {
  const MyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: 45, width: 45),
      child: TextField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
        obscuringCharacter: "*",
        obscureText: true,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(196, 229, 194, 1),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1)),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1)),
              borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
      ),
    );
  }
}
