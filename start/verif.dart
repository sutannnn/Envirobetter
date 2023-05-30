import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/atributs/mybutton.dart';
import 'package:flutter_application_1/atributs/mytextfield.dart';
import 'package:flutter_application_1/start/signin.dart';
import 'package:flutter_application_1/start/signup.dart';
import 'package:sign_button/sign_button.dart';
import '../data/datarole.dart';

class MyVerif extends StatefulWidget {
  const MyVerif({
    super.key, required this.role,
  });

  final Role role;

  @override
  State<MyVerif> createState() => _MyVerifState(role);
}

class _MyVerifState extends State<MyVerif> {
  bool? check = false;
  final Role role;

  _MyVerifState(this.role);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: PreferredSize(
              child: Container(child: Image.asset('images/verif.png')),
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
              Text(
                "Verification cose sent!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text("Please enter the code to continue",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
              Container(
                width: 235,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [MyCode(), MyCode(), MyCode(), MyCode()],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Having trouble?",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Send again.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 74, 34, 1),
                              fontSize: 12)))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: Checkbox(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
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
              MyButton(tx: "Continue", fs: 16, txc: Colors.black, elc: Color.fromRGBO(40, 103, 83, 1), minSz: Size(230,40), cl: MySignIn(role: role,))
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
