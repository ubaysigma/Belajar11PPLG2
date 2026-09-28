import 'package:flutter/material.dart';
import 'package:belajarflutter11pplg2/components/mytextfield.dart';
import 'package:belajarflutter11pplg2/components/mybutton.dart';
import 'package:belajarflutter11pplg2/components/mytext.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  String statuslogin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          MyText(text: "Status Login : $statuslogin"),
          
          Container(
            margin: EdgeInsets.all(10),
            child: Mytextfield(
              hint: "Input Username",
              txtcontroller: txtusername,
              numericOnly: false,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Mytextfield(
              hint: "Input Password",
              txtcontroller: txtpassword,
              numericOnly: false,
            ),
          ),
          Container(
            margin:EdgeInsets.all(10),
            child: Mybutton(
              text: "Login",
              onPressed: () {
                if (txtusername.text == "admin" && txtpassword.text == "admin") {
                  setState(() {
                    statuslogin = "Berhasil";
                  });
                } else {
                  setState(() {
                    statuslogin = "Gagal";
                  });
                }
              },
            ),
          )
        ],
      ),
    );
  }
}