import 'package:flutter/material.dart';
import '../data/datamitra.dart';

class MyMitra extends StatelessWidget {
  MyMitra({super.key,});

  final List<DataMitra> myMitra = [
    DataMitra("Bank Sampah Putri Mandiri", "Jl. Awikoen Tama Selatan, Gending, Gresik, Jawa Timur"),
    DataMitra("Bank Sampah Kertabumi", "Jl. Gubernur Suryo No.28, Gresik, Jawa Timur"),
    DataMitra("Bank Sampah Ceria", "Gg. IV No.12, Injen Barat, Tiogobendung, Gresik, Jawa Timur"),
    DataMitra("Bank Sampah GEMES", "Jl. Raya Dewi Sekordadu, Gunungsari, Kebomas, Gresik, Jawa Timur"),
    DataMitra("Bank Sampah Kutilang Sari", "Jl. Kutilang, Suci, Manyar, Gresik, Jawa Timur")
  ];

  @override
  Widget build(BuildContext context) {
    final List<Padding> myMitra2 = List.generate(myMitra.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Card(
                elevation: 5,
                shadowColor: Colors.black,
                color: Color.fromRGBO(244, 208, 150, 1),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: InkWell(
                  splashColor: Color.fromRGBO(198, 206, 214, 1),
                  onTap: () {
                    debugPrint('Card tapped.');
                  },
                  child: SizedBox(
                      height: 80,
                      width: 317,
                      child: Row(
                        children: [
                          SizedBox(width: 8,),
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset("images/mitra2.png"),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(myMitra[index].name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                              Container(width: 200, child: Text(myMitra[index].address, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),))
                            ],
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right, size: 24,))
                        ],
                      )
                  ),
                ),
              ),
      );
    });

    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 238, 224, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('images/bg.png'), fit: BoxFit.fill),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 5),
              child: Container(
                height: 50,
                width: 50,
                child: Image.asset("images/mitra2.png"),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(244, 208, 150, 1),
                ),
              ),
            ),
            Text(
              "Mitra Envirobetter",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 40, width: 317),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Cari Mitra EnviroBetter",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    labelStyle: const TextStyle(
                        color: Color.fromRGBO(157, 154, 154, 1), fontSize: 15),
                    focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(214, 214, 214, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(22))),
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(214, 214, 214, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(22))),
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Column(
                children: myMitra2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
