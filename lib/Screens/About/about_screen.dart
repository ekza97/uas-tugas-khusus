import 'package:final_project/Screens/Dashboard/dashboard_screen.dart';
import 'package:final_project/Screens/Krs/components/krs_container.dart';
import 'package:final_project/Screens/Krs/kontrak_mk_semester.dart';
import 'package:final_project/Screens/Krs/krs_screen.dart';
import 'package:final_project/constans.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'About Screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tentang Kami',
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
              SizedBox(
                height: 80,
              ),
              Text(
                "KELOMPOK J",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              TeamContainer(
                nama: "EKA SAPUTRA",
                nim: "202065053",
              ),
              SizedBox(
                height: 10,
              ),
              TeamContainer(
                nama: "CLARA AMALIA ISMAYANTI",
                nim: "201965056",
              ),
              SizedBox(
                height: 10,
              ),
              TeamContainer(
                nama: "ARIN NOFIANTI",
                nim: "201965042",
              ),
              SizedBox(
                height: 10,
              ),
              TeamContainer(
                nama: "NOEL CARNITOS PADANG KENDE",
                nim: "201965025",
              ),
              SizedBox(
                height: 10,
              ),
              TeamContainer(
                nama: "JUBITA",
                nim: "201965053",
              ),
              SizedBox(
                height: 10,
              ),
              TeamContainer(
                nama: "JULIAH ANGGRAENI",
                nim: "201965039",
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}

class TeamContainer extends StatelessWidget {
  final String nama;
  final String nim;
  const TeamContainer({
    Key key,
    this.nama,
    this.nim,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: Container(
          color: Colors.purple[600],
          child: Row(
            children: [
              Expanded(
                child: Text(
                  nama,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Text(
                nim,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          height: 42,
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
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
