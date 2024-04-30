import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/dottet_line.dart';

class CertificateUI extends StatefulWidget {
  const CertificateUI({super.key});

  @override
  State<CertificateUI> createState() => _CertificateUIState();
}

class _CertificateUIState extends State<CertificateUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2)),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                      child:  Center(
                          child: Text(
                            "Shirt",
                            style: GoogleFonts.poppins(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )),
                    ),),
                    Expanded(child:
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                      child:  Center(
                          child: Text(
                            "Pant/Plazo",
                            style: GoogleFonts.poppins(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )),
                    ),),
                    Expanded(child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                      child:  Center(
                          child: Text(
                            "Gown/Frock",
                            style: GoogleFonts.poppins(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )),
                    )),
                    Expanded(child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                      child:  Center(
                          child: Text(
                            "",
                            style: GoogleFonts.poppins(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )),
                    ))
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1)),
                ),
                Row(
                  children: [
                   Expanded(child:  Container(
                     width: MediaQuery.of(context).size.width / 4,
                     height: MediaQuery.of(context).size.height,
                     decoration: BoxDecoration(border: Border.all()),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "L/P",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "L/S",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "L/CH",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "U.C.",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "C",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "W",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "H",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "Sh",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 8, right: 8),
                           child: Row(
                             children: [
                               Text(
                                 "SL-SM",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               Expanded(
                                 child: SizedBox(
                                   height: 40,
                                   child: Column(
                                     children: [
                                       Row(
                                         children: [
                                           const SizedBox(
                                             width: 30,
                                           ),
                                           Padding(
                                             padding: const EdgeInsets.only(
                                                 right: 35),
                                             child: Text(
                                               "L",
                                               style: GoogleFonts.poppins(
                                                   fontSize: 10,
                                                   fontWeight:
                                                   FontWeight.w500),
                                             ),
                                           ),
                                           Text(
                                             "R",
                                             style: GoogleFonts.poppins(
                                                 fontSize: 10,
                                                 fontWeight: FontWeight.w500),
                                           ),
                                         ],
                                       ),
                                       Row(
                                         children: [
                                           const SizedBox(
                                             width: 30,
                                           ),
                                           Padding(
                                             padding: const EdgeInsets.only(
                                                 right: 16),
                                             child: Text(
                                               "(  )",
                                               style: GoogleFonts.poppins(
                                                   fontSize: 10,
                                                   fontWeight:
                                                   FontWeight.w500),
                                             ),
                                           ),
                                           Text(
                                             "(  )",
                                             style: GoogleFonts.poppins(
                                                 fontSize: 10,
                                                 fontWeight: FontWeight.w500),
                                           )
                                         ],
                                       ),
                                       const SizedBox(
                                           width: 100,
                                           child: MySeparator(
                                             height: 1,
                                           ))
                                     ],
                                   ),
                                 ),
                               )
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 8, right: 8),
                           child: Row(
                             children: [
                               Text(
                                 "E/B",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               Expanded(
                                 child: SizedBox(
                                   height: 40,
                                   child: Column(
                                     children: [
                                       Row(
                                         children: [
                                           const SizedBox(
                                             width: 60,
                                           ),
                                           Padding(
                                             padding: const EdgeInsets.only(
                                                 right: 16),
                                             child: Text(
                                               "(  )",
                                               style: GoogleFonts.poppins(
                                                   fontSize: 10,
                                                   fontWeight:
                                                   FontWeight.w500),
                                             ),
                                           ),
                                           Text(
                                             "(  )",
                                             style: GoogleFonts.poppins(
                                                 fontSize: 10,
                                                 fontWeight: FontWeight.w500),
                                           )
                                         ],
                                       ),
                                       const Padding(
                                         padding: EdgeInsets.only(top: 15),
                                         child: Expanded(
                                           child: SizedBox(
                                               width: 100,
                                               child: MySeparator(
                                                 height: 1,
                                               )),
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
                               )
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 8, right: 8),
                           child: Row(
                             children: [
                               Text(
                                 "3/4",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               Expanded(
                                 child: SizedBox(
                                   height: 40,
                                   child: Column(
                                     children: [
                                       Row(
                                         children: [
                                           const SizedBox(
                                             width: 60,
                                           ),
                                           Padding(
                                             padding: const EdgeInsets.only(
                                                 right: 16),
                                             child: Text(
                                               "(  )",
                                               style: GoogleFonts.poppins(
                                                   fontSize: 10,
                                                   fontWeight:
                                                   FontWeight.w500),
                                             ),
                                           ),
                                           Text(
                                             "(  )",
                                             style: GoogleFonts.poppins(
                                                 fontSize: 10,
                                                 fontWeight: FontWeight.w500),
                                           )
                                         ],
                                       ),
                                       const Padding(
                                         padding: EdgeInsets.only(top: 15),
                                         child: Expanded(
                                           child: SizedBox(
                                               width: 100,
                                               child: MySeparator(
                                                 height: 1,
                                               )),
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
                               )
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "Full",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "A/h",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "A",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "D.P.",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "F.C.",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "B.C.",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "N",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "B.N.",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "CK",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Text(
                                 "Ghera",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500),
                               ),
                               const Expanded(
                                 child: Padding(
                                   padding: EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: MySeparator(
                                         height: 1,
                                       )),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),),

                    Expanded(child:    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "L",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "W",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "H",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "Th",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "K",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "Mori",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                              child: Text(
                                "SALWAR",
                                style: GoogleFonts.poppins(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )),

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "L",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "M",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "W",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "H",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                              child: Text(
                                "Churidar",
                                style: GoogleFonts.poppins(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "L",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "W",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "H",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "Th",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "K",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "Mori",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                              child: Text(
                                "Lehnga",
                                style: GoogleFonts.poppins(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "L",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "W",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "H",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),),
                    Expanded(child:    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "L",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "B.L.",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                              child: Text(
                                "Blouse",
                                style: GoogleFonts.poppins(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "L",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "D.P.",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "U.C.",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "C",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "W",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "Sh",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "SL-SM",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: 40,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 35),
                                              child: Text(
                                                "L",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              ),
                                            ),
                                            Text(
                                              "R",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 16),
                                              child: Text(
                                                "(  )",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              ),
                                            ),
                                            Text(
                                              "(  )",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                            width: 100,
                                            child: MySeparator(
                                              height: 1,
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "E/B",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: 40,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 60,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 16),
                                              child: Text(
                                                "(  )",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              ),
                                            ),
                                            Text(
                                              "(  )",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 15),
                                          child: Expanded(
                                            child: SizedBox(
                                                width: 100,
                                                child: MySeparator(
                                                  height: 1,
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "A/h",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "F.C",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "B.C.",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "N",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "B.N",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: MySeparator(
                                          height: 1,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),),
                    Expanded(child:    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
