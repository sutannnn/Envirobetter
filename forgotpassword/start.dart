import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/atributs/mybutton.dart';
import 'package:flutter_application_1/atributs/mytextfield.dart';
import 'package:flutter_application_1/forgotpassword/verify.dart';
import 'package:flutter_application_1/start/signup.dart';
import 'package:flutter_application_1/start/verif.dart';
import 'package:sign_button/sign_button.dart';
import '../data/datarole.dart';

class MyNewStart extends StatelessWidget {
  MyNewStart({
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
              child: Container(child: Image.asset('images/newstart.png')),
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
              Text("Forgot Password", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
              Card(
                color: Color.fromRGBO(196, 229, 194, 1),
                child: Container(
                  height: 75,
                  width: 230,
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Icon(Icons.chat),
                    ),
                    iconColor: Colors.black,
                    title: Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Text("Via SMS", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),
                    ),
                    subtitle: Text("082166403320", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                  ),
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))),
              ),
              Card(
                color: Color.fromRGBO(196, 229, 194, 1),
                child: Container(
                  height: 75,
                  width: 230,
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Icon(Icons.mail),
                    ),
                    iconColor: Colors.black,
                    title: Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Text("Via Email", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                    ),
                    subtitle: Text("sutan.lubis20@gmail.com", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                  ),
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))),
              ),
              SizedBox(height: 20,),
              MyButton(tx: "Continue", fs: 16, txc: Colors.white, elc: Color.fromRGBO(40, 103, 83, 1), minSz: Size(230,40), cl: MyVerify(role: role,))
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
