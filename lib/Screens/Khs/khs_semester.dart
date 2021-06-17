import 'package:final_project/Screens/Dashboard/dashboard_screen.dart';
import 'package:final_project/Screens/Khs/khs_screen.dart';
import 'package:final_project/Screens/Krs/components/krs_button.dart';
import 'package:final_project/Screens/Krs/kontrak_mk.dart';
import 'package:final_project/Screens/Krs/krs_kontrak.dart';
import 'package:final_project/constans.dart';
import 'package:flutter/material.dart';

class KhsSemester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KHS Screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kartu Hasil Studi (KHS)',
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
                height: 4,
              ),
              ListMK(
                namaMK: "2019 / 2020",
                kodeMK: "GANJIL",
                sksMK: "",
                checked: true,
              ),
              SizedBox(
                height: 4,
              ),
              ListMK(
                namaMK: "2019 / 2020",
                kodeMK: "GENAP",
                sksMK: "",
              ),
              SizedBox(
                height: 4,
              ),
              ListMK(
                namaMK: "2020 / 2021",
                kodeMK: "GANJIL",
                sksMK: "",
              ),
              SizedBox(
                height: 4,
              ),
              ListMK(
                namaMK: "2020 / 2021",
                kodeMK: "GENAP",
                sksMK: "",
              ),
              SizedBox(
                height: 30,
              ),
              KrsButton(
                text: "TAMPILKAN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return KhsScreen();
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListMK extends StatelessWidget {
  final String namaMK;
  final String kodeMK;
  final String sksMK;
  final bool checked;
  const ListMK({
    Key key,
    @required this.namaMK,
    @required this.kodeMK,
    @required this.sksMK,
    this.checked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckboxListTile(
        title: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    namaMK,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    kodeMK,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 11,
                    ),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            Text(
              sksMK,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF0D9CC9),
              ),
            )
          ],
        ),
        value: checked,
        onChanged: (value) {},
        activeColor: Color(0xFF5F2D90),
      ),
      color: Colors.white,
    );
  }
}
