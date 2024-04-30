import 'package:butique_app/common/common.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pdf_create_ui.dart';



class ShirtMeasurement extends StatelessWidget {
  const ShirtMeasurement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Padding(
        padding:  const EdgeInsets.only(left: 15, right: 15,top: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1.5,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.asset(
                      "meserment.jpeg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'L/P',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'L/S',
                              labelText: '0.00',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'L/CH',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'U.C.',
                              labelText: '0.00',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'C',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'W',
                              labelText: '0.00',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'H',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'Sh',
                              labelText: '0.00',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 12.5,
                                child: Common.buildFormFieldWithIcon(
                                  heading: 'SL-SM',
                                  labelText: 'L',
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 12.5,
                                child: Common.buildFormFieldWithIcon(
                                  heading: '',
                                  labelText: 'R',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20.0),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 12.5,
                                child: Common.buildFormFieldWithIcon(
                                  heading: 'E/B',
                                  labelText: 'L',
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 12.5,
                                child: Common.buildFormFieldWithIcon(
                                  heading: '',
                                  labelText: 'R',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 12.5,
                                child: Common.buildFormFieldWithIcon(
                                  heading: '3/4',
                                  labelText: 'L',
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 12.5,
                                child: Common.buildFormFieldWithIcon(
                                  heading: '',
                                  labelText: 'R',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'Full',
                              labelText: '0.00',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'A/H',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'A',
                              labelText: '1/2',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 6,
                                child: Common.buildFormFieldWithIcon(
                                  heading: 'D.P.',
                                  labelText: '0.0',
                                ),
                              ),
                              const SizedBox(width: 20.0),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 6,
                                child: Common.buildFormFieldWithIcon(
                                  heading: 'F.C',
                                  labelText: '0.0',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'B.C.',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child:Common.buildFormFieldWithIcon(
                              heading: 'N',
                              labelText: '0.00',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'B.N.',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'CK',
                              labelText: '0.00',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'Ghera',
                              labelText: '0.00',
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                child: Common.buildFormFieldWithIconForNotes(
                  heading: 'Notes',
                  labelText: '',
                ),
              ),
              const SizedBox(height: 20.0),
              const DrawingBoardUI(),
              const SizedBox(height: 20.0),
              ElevatedButton(
                  style:  ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Colors.deepPurple.shade400),
                      fixedSize: const MaterialStatePropertyAll(Size(
                        330,
                        50,
                      ))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CertificateUI()));
                    //todo implement on tap
                  },
                  child: Text(
                    "Generate Measurement / Print",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
