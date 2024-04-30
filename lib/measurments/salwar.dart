import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/common.dart';


class Salwar extends StatelessWidget {
  const Salwar({super.key});

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
                    height: 400,
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
                              heading: 'L',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'M',
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
                              heading: 'W',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: Common.buildFormFieldWithIcon(
                              heading: 'H',
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
