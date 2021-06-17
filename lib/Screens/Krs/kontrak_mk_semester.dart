import 'package:final_project/Screens/Krs/components/krs_button.dart';
import 'package:final_project/Screens/Krs/kontrak_mk.dart';
import 'package:final_project/Screens/Krs/krs_kontrak.dart';
import 'package:final_project/constans.dart';
import 'package:flutter/material.dart';

class KontrakMKSemester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KHS Screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kontrak Mata Kuliah Semester 2',
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
                  return KontrakMK();
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
                namaMK: "MATEMATIKA DASAR 1",
                kodeMK: "C65026",
                sksMK: "2 SKS",
                checked: true,
              ),
              SizedBox(
                height: 4,
              ),
              ListMK(
                namaMK: "MATEMATIKA DASAR 2",
                kodeMK: "C65026",
                sksMK: "2 SKS",
                checked: true,
              ),
              SizedBox(
                height: 4,
              ),
              ListMK(
                namaMK: "FISIKA DASAR 1",
                kodeMK: "C65026",
                sksMK: "2 SKS",
                checked: true,
              ),
              SizedBox(
                height: 4,
              ),
              ListMK(
                namaMK: "FISIKA DASAR 2",
                kodeMK: "C65026",
                sksMK: "2 SKS",
              ),
              SizedBox(
                height: 30,
              ),
              KrsButton(
                text: "SIMPAN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return KrsKontrak();
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
      ),
      color: Colors.white,
    );
  }
}
