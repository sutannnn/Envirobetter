import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 238, 224, 1),
      appBar: AppBar(
        toolbarHeight: 230,
        flexibleSpace: Image(
          image: AssetImage('images/bgprofile.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.create,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(height: 130, width: 130),
              child: Stack(children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Color.fromRGBO(244, 208, 150, 1),
                    border:
                        Border.all(color: Color.fromRGBO(244, 208, 150, 1)),
                  ),
                  child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        "images/profile.png",
                        fit: BoxFit.fill,
                      )),
                ),
                Positioned(
                  child: Icon(Icons.camera_alt),
                  bottom: 35,
                  right: 30,
                )
              ])),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "ID Member",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 74, 34, 1)),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 121,
                    height: 28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(196, 229, 194, 1)),
                    child: Text(
                      "0123456789",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 74, 34, 1)),
                    ),
                  ),
                  Icon(Icons.copy)
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: 210,
                height: 40,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Nama",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 210,
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color.fromRGBO(0, 74, 34, 1)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Aranavulia",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                width: 210,
                height: 40,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "No. Telepon",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 210,
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color.fromRGBO(0, 74, 34, 1)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "082166403322",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                width: 210,
                height: 40,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 210,
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color.fromRGBO(0, 74, 34, 1)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "aranavulia13@gmail.com",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: 200,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 0.5,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(0, 74, 34, 1)),
                child: Text(
                  "SIMPAN",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 5,),
              TextButton(
                  onPressed: () {},
                  child: Text("KELUAR",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(10, 10, 10, 0.5)))),
              SizedBox(height: 5,),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                          Icons.question_mark,
                          color: Color.fromRGBO(0, 74, 34, 1),
                        ),
                  label: Text(
                          "BUTUH BANTUAN",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 74, 34, 1)),
                        ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(120, 40),
                    side: BorderSide(color: Color.fromRGBO(0, 74, 34, 1),),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    primary: Colors.white
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
