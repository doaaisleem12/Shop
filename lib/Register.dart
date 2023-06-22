import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // final style = TextStyle(fontSize: 40, fontFamily: FontWeight.bold);
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Register Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Complete Your Details Or Continue With Social Media",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration:  InputDecoration(
                      suffixIcon: Icon(Icons.email_outlined),
                      fillColor: Colors.white,
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: Text("Email"),
                      hintText: "Enter your email",
                      hintStyle:
                      TextStyle(fontSize: 16, color: Colors.grey),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration:InputDecoration(
                      suffixIcon: Icon(Icons.lock),
                      fillColor: Colors.white,
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "password",
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: "Enter your password",
                      hintStyle:
                      TextStyle(fontSize: 16, color: Colors.grey),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration:  InputDecoration(
                      suffixIcon: Icon(Icons.lock),
                      fillColor: Colors.white,
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "confirm password",
                      hintText: "Re-enter your password",
                      hintStyle:
                      TextStyle(fontSize: 16, color: Colors.grey),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {},
                  shape: StadiumBorder(),
                  color: Colors.orange.shade900,
                  textColor: Colors.white,
                  child: Text("Continue"),
                  height: 45,
                  minWidth: 400,
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      shape: CircleBorder(),
                      textColor: Colors.white,
                      child: IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset("assets/icons/facebook.svg"),),
                      height: 40,
                    ),
                    SizedBox(width: 10),
                    MaterialButton(
                      onPressed: () {},
                      shape: CircleBorder(),
                      textColor: Colors.white,
                      child: IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset("assets/icons/google-icon.svg"),),
                      height: 40,
                    ),
                    SizedBox(width: 10),
                    MaterialButton(
                      onPressed: () {},
                      shape: CircleBorder(),
                      textColor: Colors.white,
                      child: IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset("assets/icons/twitter.svg"),),

                      height: 40,
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "By continuing, you confirm that you agree",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}