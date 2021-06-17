import 'package:final_project/Screens/Dashboard/dashboard_screen.dart';
import 'package:final_project/Screens/Khs/khs_semester.dart';
import 'package:final_project/Screens/Krs/components/krs_button.dart';
import 'package:final_project/constans.dart';
import 'package:flutter/material.dart';

class KhsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KHS Screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kartu Hasi Studi (KHS)',
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
                  return KhsSemester();
                }),
              );
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              KHSContainer(
                leftText: 'Indeks Prestasi Semester (IPS)\nSKS yang dikontrak',
                rightText: '3,59\n22 SKS',
                backColor: Colors.white,
                height: 52,
              ),
              KHSContainer(
                leftText: 'MATA KULIAH',
                rightText: 'NILAI',
                backColor: Colors.grey[300],
              ),
              NilaiContainer(
                leftTopText: 'BAHASA INGGRIS UMUM',
                leftBottText: '2 SKS',
                rightText: 'A',
                backColor: Colors.white,
                height: 52,
                textColor: Colors.blue,
              ),
              SizedBox(
                height: 6,
              ),
              NilaiContainer(
                leftTopText: 'PENDIDIKAN KEWARGANERAAN',
                leftBottText: '3 SKS',
                rightText: 'A',
                backColor: Colors.white,
                height: 52,
                textColor: Colors.blue,
              ),
              SizedBox(
                height: 6,
              ),
              NilaiContainer(
                leftTopText: 'MATEMATIKA',
                leftBottText: '2 SKS',
                rightText: 'A',
                backColor: Colors.white,
                height: 52,
                textColor: Colors.blue,
              ),
              SizedBox(
                height: 6,
              ),
              NilaiContainer(
                leftTopText: 'STRUKTUR DATA',
                leftBottText: '3 SKS',
                rightText: 'B',
                backColor: Colors.white,
                height: 52,
                textColor: Colors.green,
              ),
              SizedBox(
                height: 6,
              ),
              NilaiContainer(
                leftTopText: 'BASIS DATA 1',
                leftBottText: '3 SKS',
                rightText: 'B',
                backColor: Colors.white,
                height: 52,
                textColor: Colors.green,
              ),
              SizedBox(
                height: 6,
              ),
              NilaiContainer(
                leftTopText: 'JARINGAN KOMPUTER 1',
                leftBottText: '3 SKS',
                rightText: 'B',
                backColor: Colors.white,
                height: 52,
                textColor: Colors.green,
              ),
              SizedBox(
                height: 6,
              ),
              NilaiContainer(
                leftTopText: 'SISTEM OPERASI',
                leftBottText: '3 SKS',
                rightText: 'A',
                backColor: Colors.white,
                height: 52,
                textColor: Colors.blue,
              ),
              SizedBox(
                height: 6,
              ),
              NilaiContainer(
                leftTopText: 'PENDIDIKAN AGAMA',
                leftBottText: '3 SKS',
                rightText: 'A',
                backColor: Colors.white,
                height: 52,
                textColor: Colors.blue,
              ),
              SizedBox(
                height: 20,
              ),
              KrsButton(
                text: "CETAK",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KHSContainer extends StatelessWidget {
  final String leftText;
  final String rightText;
  final Color backColor;
  final double height;
  const KHSContainer({
    Key key,
    @required this.leftText,
    @required this.rightText,
    this.backColor,
    this.height = 32,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Text(
              leftText,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ),
          Text(
            rightText,
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
      height: height,
      color: backColor,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
    );
  }
}

class NilaiContainer extends StatelessWidget {
  final String leftTopText;
  final String leftBottText;
  final String rightText;
  final Color backColor;
  final double height;
  final Color textColor;
  const NilaiContainer({
    Key key,
    @required this.leftTopText,
    @required this.rightText,
    this.backColor,
    this.height = 32,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        top: 10,
        bottom: 10,
        right: 20,
      ),
    );
  }
}
