import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routs.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/login.png"),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Welcome",
                style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 4),
                      color: Colors.black54,
                      blurRadius: 10.0,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter UserName",
                    labelText: "Username",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRouts.homeRoute);
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
