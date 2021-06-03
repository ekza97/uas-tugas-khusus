import 'package:final_project/Screens/Dashboard/components/bottom_nav_bar.dart';
import 'package:final_project/Screens/Dashboard/dashboard_screen.dart';
import 'package:final_project/constans.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: EditProfile(),
    );
  }
}

class EditProfile extends StatefulWidget {
  EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        title: Text('Profilku'),
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return DashboardScreen();
              }),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 15,
          top: 20,
          right: 15,
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                            )
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/shutdown.png'),
                          )),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Colors.white,
                          ),
                          color: Colors.blue,
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              buildTextField(
                label: "Nama Lengkap",
                hintText: "Eka Saputra",
                isPassword: false,
              ),
              buildTextField(
                label: "Angkatan",
                hintText: "2020",
                isPassword: false,
              ),
              buildTextField(
                label: "Password",
                hintText: "*****",
                isPassword: true,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "CANCEL",
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.black,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "SIMPAN",
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class buildTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final Function press;
  final bool isPassword;
  const buildTextField({
    Key key,
    @required this.label,
    @required this.hintText,
    this.press,
    @required this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 30,
      ),
      child: TextField(
        obscureText: isPassword ? true : false,
        decoration: InputDecoration(
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                  onPressed: press,
                )
              : null,
          contentPadding: EdgeInsets.only(bottom: 5),
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
