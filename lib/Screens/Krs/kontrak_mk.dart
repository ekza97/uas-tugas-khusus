import 'package:final_project/Screens/Krs/components/krs_container.dart';
import 'package:final_project/Screens/Krs/kontrak_mk_semester.dart';
import 'package:final_project/Screens/Krs/krs_screen.dart';
import 'package:final_project/constans.dart';
import 'package:flutter/material.dart';

class KontrakMK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KHS Screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kontrak Mata Kuliah',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          backgroundColor: kPrimaryColor,
          toolbarHeight: 52,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            iconSize: 22,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return KrsScreen();
                }),
              );
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 4,
              ),
              PaketMK(
                text: 'PAKET SEMESTER 2',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return KontrakMKSemester();
                    }),
                  );
                },
              ),
              SizedBox(
                height: 4,
              ),
              PaketMK(
                text: 'PAKET SEMESTER 4',
                press: () {},
              ),
              SizedBox(
                height: 4,
              ),
              PaketMK(
                text: 'PAKET SEMESTER 6',
                press: () {},
              ),
              SizedBox(
                height: 4,
              ),
              PaketMK(
                text: 'PAKET SEMESTER 8',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaketMK extends StatelessWidget {
  final String text;
  final Function press;
  const PaketMK({
    Key key,
    this.press,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: KRSContainer(
        leftText: text,
        rightText: '',
        backColor: Colors.white,
      ),
    );
  }
}
