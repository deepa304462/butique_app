import 'package:butique_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/tailor_emoji.png",
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Charu",
                    style: GoogleFonts.kaiseiTokumin(
                        fontSize: 40, color: const Color(0xff4A4EBD)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: const Color(0xffF85C81),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Plan what you will do to be more organized for",
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
              ),
              Center(
                  child: Text(
                "today, tomorrow and beyond",
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
              )),
              Spacer(),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff5057DC)),
                  fixedSize: MaterialStatePropertyAll(
                    Size(MediaQuery.of(context).size.width/1.5,80),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    )
                  )
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(fontSize: 24, color: Colors.white,fontWeight:FontWeight.bold),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
