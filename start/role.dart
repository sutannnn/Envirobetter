import 'package:flutter/material.dart';
import 'package:flutter_application_1/start/signin.dart';
import '../atributs/myrole.dart';
import '../data/datarole.dart';

class MyRole extends StatelessWidget {
  const MyRole({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Role> myRole = [
      Role('images/role11.png'),
      Role('images/role22.png')
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Choose Your Role",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            CustomRole(img: 'images/role1.png', tx: "Member", cls: MySignIn(role: myRole[0]), clr: Color.fromRGBO(40, 103, 83, 1), h: 180, w: 200, txc: Colors.white, r: 30,),
            CustomRole(img: 'images/role2.png', tx: "Bank Sampah", cls: MySignIn(role: myRole[1]), clr: Color.fromRGBO(40, 103, 83, 1), h: 180, w: 200, txc: Colors.white, r: 30,),
          ],
        ),
      ),
    );
  }
}