import 'package:final_project/Screens/Dashboard/dashboard_screen.dart';
import 'package:final_project/Screens/Krs/components/krs_button.dart';
import 'package:final_project/Screens/Krs/components/krs_container.dart';
import 'package:final_project/constans.dart';
import 'package:flutter/material.dart';

class KrsKontrak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KHS Screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kartu Rencana Studi (KRS)',
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
                  return DashboardScreen();
                }),
              );
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              KRSContainer(
                leftText: 'Nama',
                rightText: 'EKA SAPUTRA',
                backColor: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              KRSContainer(
                leftText: 'NIM',
                rightText: '202065053',
                backColor: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              KRSContainer(
                leftText: 'Program Studi',
                rightText: 'TEKNIK INFORMATIKA',
                backColor: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              KRSContainer(
                leftText: 'Semester',
                rightText: 'Genap 2020 / 2021',
                backColor: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              KRSContainer(
                leftText: 'Maximum SKS',
                rightText: '20',
                backColor: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              KRSContainer(
                leftText: 'Dosen Pembimbing Akademik',
                rightText: 'Christian Dwi Suhendra, S.T., M.Sc',
                backColor: Colors.white,
              ),
              SizedBox(
                height: 13,
              ),
              ListMK(
                leftTopText: "MATEMATIKA DASAR 1",
                rightText: "2 SKS",
                backColor: Colors.white,
                leftBottText: "C65026",
                textColor: Color(0xFF0D9CC9),
              ),
              SizedBox(
                height: 2,
              ),
              ListMK(
                leftTopText: "MATEMATIKA DASAR 2",
                rightText: "2 SKS",
                backColor: Colors.white,
                leftBottText: "C65026",
                textColor: Color(0xFF0D9CC9),
              ),
              SizedBox(
                height: 2,
              ),
              ListMK(
                leftTopText: "FISIKA DASAR 1",
                rightText: "2 SKS",
                backColor: Colors.white,
                leftBottText: "C65026",
                textColor: Color(0xFF0D9CC9),
              ),
              SizedBox(
                height: 2,
              ),
              ListMK(
                leftTopText: "FISIKA DASAR 2",
                rightText: "2 SKS",
                backColor: Colors.white,
                leftBottText: "C65026",
                textColor: Color(0xFF0D9CC9),
              ),
              SizedBox(
                height: 40,
              ),
              KrsButton(
                text: "CETAK",
                press: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListMK extends StatelessWidget {
  final String leftTopText;
  final String leftBottText;
  final String rightText;
  final Color backColor;
  final double height;
  final Color textColor;
  const ListMK({
    Key key,
    @required this.leftTopText,
    @required this.rightText,
    this.backColor,
    this.height = 52,
    this.leftBottText,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  leftTopText,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  leftBottText,
                  style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ),
          Text(
            rightText,
            style: TextStyle(
              fontSize: 16,
              color: textColor,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
      height: height,
      color: backColor,
      padding: EdgeInsets.only(
        left: 10,
        top: 5,
        bottom: 5,
        right: 20,
      ),
    );
  }
}
