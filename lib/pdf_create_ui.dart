import 'package:butique_app/models/add_customer_measurments_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PdfCreateUi extends StatefulWidget {
  AddMeasurementsModel addMeasurementsModel;
  PdfCreateUi(this.addMeasurementsModel, {super.key});

  @override
  State<PdfCreateUi> createState() => _PdfCreateUiState();
}

class _PdfCreateUiState extends State<PdfCreateUi> {
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.lpShirt.toString() ?? "",),
                                        const Divider(height: 1,),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.lsShirt.toString() ?? "",),
                                           const Divider(height: 1,),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.lchShirt.toString() ?? "",),
                                           const Divider(height: 1,),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.ucShirt.toString() ?? "",),
                                           const Divider(height: 1,),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.cShirt.toString() ?? "",),
                                           const Divider(height: 1,),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.wShirt.toString() ?? "",),
                                           const Divider(height: 1,),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.hShirt.toString() ?? "",),
                                           const Divider(height: 1,),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.shShirt.toString() ?? "",),
                                           const Divider(height: 1,),
                                         ],
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
                                               "(${widget.addMeasurementsModel.slSmShirtL ?? ""}  )",
                                               style: GoogleFonts.poppins(
                                                   fontSize: 10,
                                                   fontWeight:
                                                   FontWeight.w500),
                                             ),
                                           ),
                                           Text(
                                             "(${widget.addMeasurementsModel.slSmShirtR ?? ""}  )",
                                             style: GoogleFonts.poppins(
                                                 fontSize: 10,
                                                 fontWeight: FontWeight.w500),
                                           )
                                         ],
                                       ),
                                       const SizedBox(
                                           width: 100,
                                           child: Divider(
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
                                               "(${widget.addMeasurementsModel.ebShirtL ?? ""}  )",
                                               style: GoogleFonts.poppins(
                                                   fontSize: 10,
                                                   fontWeight:
                                                   FontWeight.w500),
                                             ),
                                           ),
                                           Text(
                                             "(${widget.addMeasurementsModel.ebShirtR ?? ""}  )",
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
                                               child: Divider(
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
                                               "(${widget.addMeasurementsModel.tfShirtL ?? ""}  )",
                                               style: GoogleFonts.poppins(
                                                   fontSize: 10,
                                                   fontWeight:
                                                   FontWeight.w500),
                                             ),
                                           ),
                                           Text(
                                             "(${widget.addMeasurementsModel.tfShirtR ?? ""}  )",
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
                                               child: Divider(
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.fullShirt ?? "",),
                                           const Divider(
                                             height: 1,
                                           ),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.ahShirt ?? "",),
                                           const Divider(
                                             height: 1,
                                           ),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child:Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.aShirt ?? "",),
                                           const Divider(
                                             height: 1,
                                           ),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.dpShirt ?? "",),
                                           const Divider(
                                             height: 1,
                                           ),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.fcShirt ?? "",),
                                           const Divider(
                                             height: 1,
                                           ),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.bcShirt ?? "",),
                                           const Divider(
                                             height: 1,
                                           ),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child:  Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.nShirt ?? "",),
                                           const Divider(
                                             height: 1,
                                           ),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child:  Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.bnShirt ?? "",),
                                           const Divider(
                                             height: 1,
                                           ),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child:  Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.ckShirt ?? "",),
                                           const Divider(
                                             height: 1,
                                           ),
                                         ],
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
                                Expanded(
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                   child: SizedBox(
                                       width: 100,
                                       child: Column(
                                         children: [
                                           Text(widget.addMeasurementsModel.gheraShirt ?? "",),
                                           const Divider(
                                             height: 1,
                                           ),
                                         ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.lPant ?? "",),
                                            const Divider(
                                            height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.wPant ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.hPant ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.thPant ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.kPant ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.moriPant ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.lSalwar ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.mSalwar ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.wSalwar ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.hSalwar ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.lChuridar ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.wChuridar ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.hChuridar ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.thChuridar ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.kChuridar ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.moriChuridar ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.lLehnga ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.wLehnga ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.hLehnga ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.lGown ?? "",),
                                            
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.blGown ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.lBlouse ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.dpBlouse ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.ucBlouse ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.cBlouse ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.wBlouse ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child:  Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.shBlouse ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                                "( ${widget.addMeasurementsModel.slSmBlouseL ?? ""} )",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              ),
                                            ),
                                            Text(
                                              "(${widget.addMeasurementsModel.slSmBlouseR ?? ""}  )",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                            width: 100,
                                            child: Divider(
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
                                  "A",
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
                                                "( ${widget.addMeasurementsModel.aBlouseL ?? ""} )",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              ),
                                            ),
                                            Text(
                                              "(${widget.addMeasurementsModel.aBlouseR ?? ""}  )",
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
                                                child: Divider(
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.ahBlouse ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.fcBlouse ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.bcBlouse ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.nBlouse ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                                 Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          children: [
                                            Text(widget.addMeasurementsModel.bnBlouse ?? "",),
                                            const Divider(
                                              height: 1,
                                            ),
                                          ],
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
                      child: const Column(
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
