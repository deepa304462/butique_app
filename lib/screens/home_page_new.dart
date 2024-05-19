import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class HomePageNew extends StatefulWidget {
  const HomePageNew({super.key});

  @override
  State<HomePageNew> createState() => _HomePageNewState();
}

class _HomePageNewState extends State<HomePageNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi, Charu",style: GoogleFonts.kaiseiTokumin(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.w800),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              height: MediaQuery.of(context).size.height/1.5,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60,right: 60,top: 24,bottom: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation:10,
                          shadowColor: Color(0xff71BEE1),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(30),
                          ),
                          child: Container(
                            height: 275,
                            width: 275,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff71BEE1)
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/measurement.png"),
                                Text("Measurements",style: GoogleFonts.poppins(
                                    color: Colors.black, fontSize: 30))
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation:10,
                          shadowColor: Color(0xffD88987),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(30),
                          ),
                          child: Container(
                            height: 275,
                            width: 275,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffD88987)
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/machin_image.png"),
                                Text("Orders",style: GoogleFonts.poppins(
                                    color: Colors.black, fontSize: 30))
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

