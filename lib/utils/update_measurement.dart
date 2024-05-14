import 'package:butique_app/measurements_controller.dart';
import 'package:butique_app/models/add_customer_measurments_model.dart';
import 'package:butique_app/models/add_cutomer_model.dart';
import 'package:butique_app/utils/painter_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class UpdateMeasurementOrderPage extends StatefulWidget {
  final DocumentSnapshot<Object?> document;
  final int index;

  const UpdateMeasurementOrderPage(this.document, this.index, {super.key});

  @override
  State<UpdateMeasurementOrderPage> createState() =>
      _UpdateMeasurementOrderPageState();
}

class _UpdateMeasurementOrderPageState
    extends State<UpdateMeasurementOrderPage> {
  final MeasurementsController measurementsController =
      MeasurementsController();

  bool _isLoading = false;
  String measurementId = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Update Measurement",
          style: GoogleFonts.kaiseiTokumin(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        actions: [
          _isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                  color: Colors.blueAccent,
                ))
              : ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blueAccent)),
                  onPressed: () {
                    final id = widget.document['id'];
                    update(id);
                    // update(id);
                  },
                  child: Text(
                    "Save",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0), // Adjust padding here
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('customersMeasurements')
                .where('customerId', isEqualTo: widget.document.id)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.data!.docs.isEmpty) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                DocumentSnapshot document = snapshot.data!.docs.first;
                final measurement = AddMeasurementsModel.fromMap(
                    document.data() as Map<String, dynamic>);
                measurementId = measurement.id ?? '';
                measurementsController.lpShirtController.text =
                    measurement.lpShirt.toString();
                measurementsController.lsShirtController.text =
                    measurement.lsShirt.toString();
                measurementsController.lchShirtController.text =
                    measurement.lchShirt.toString();
                measurementsController.ucShirtController.text =
                    measurement.ucShirt.toString();
                measurementsController.cShirtController.text =
                    measurement.cShirt.toString();
                measurementsController.wShirtController.text =
                    measurement.wShirt.toString();
                measurementsController.hShirtController.text =
                    measurement.hShirt.toString();
                measurementsController.shShirtController.text =
                    measurement.shShirt.toString();
                measurementsController.slSmShirtLController.text =
                    measurement.slSmShirtL.toString();
                measurementsController.slSmShirtRController.text =
                    measurement.slSmShirtR.toString();
                measurementsController.ebShirtLController.text =
                    measurement.ebShirtL.toString();
                measurementsController.ebShirtRController.text =
                    measurement.ebShirtR.toString();
                measurementsController.tfShirtLController.text =
                    measurement.tfShirtL.toString();
                measurementsController.tfShirtRController.text =
                    measurement.tfShirtR.toString();
                measurementsController.fullShirtController.text =
                    measurement.fullShirt.toString();
                measurementsController.ahShirtController.text =
                    measurement.ahShirt.toString();
                measurementsController.aShirtController.text =
                    measurement.aShirt.toString();
                measurementsController.dpShirtController.text =
                    measurement.dpShirt.toString();
                measurementsController.fcShirtController.text =
                    measurement.fcShirt.toString();
                measurementsController.nShirtController.text =
                    measurement.nShirt.toString();
                measurementsController.bnShirtController.text =
                    measurement.bnShirt.toString();
                measurementsController.ckShirtController.text =
                    measurement.ckShirt.toString();
                measurementsController.gheraShirtController.text =
                    measurement.gheraShirt.toString();
                measurementsController.lPantController.text =
                    measurement.lPant.toString();
                measurementsController.wPantController.text =
                    measurement.wPant.toString();
                measurementsController.hPantController.text =
                    measurement.hPant.toString();
                measurementsController.thPantController.text =
                    measurement.thPant.toString();
                measurementsController.kPantController.text =
                    measurement.kPant.toString();
                measurementsController.moriPantController.text =
                    measurement.moriPant.toString();
                measurementsController.lSalwarController.text =
                    measurement.lSalwar.toString();
                measurementsController.mSalwarController.text =
                    measurement.mSalwar.toString();
                measurementsController.wSalwarController.text =
                    measurement.wSalwar.toString();
                measurementsController.hSalwarController.text =
                    measurement.hSalwar.toString();
                measurementsController.lChuridarController.text =
                    measurement.lChuridar.toString();
                measurementsController.wChuridarController.text =
                    measurement.wChuridar.toString();
                measurementsController.hChuridarController.text =
                    measurement.hChuridar.toString();
                measurementsController.thChuridarController.text =
                    measurement.thChuridar.toString();
                measurementsController.kChuridarController.text =
                    measurement.kChuridar.toString();
                measurementsController.lLehngaController.text =
                    measurement.lLehnga.toString();
                measurementsController.wLehngaController.text =
                    measurement.wLehnga.toString();
                measurementsController.hLehngaController.text =
                    measurement.hLehnga.toString();
                measurementsController.lGownController.text =
                    measurement.lGown.toString();
                measurementsController.blGownController.text =
                    measurement.blGown.toString();
                measurementsController.lBlouseController.text =
                    measurement.lBlouse.toString();
                measurementsController.dpBlouseController.text =
                    measurement.dpBlouse.toString();
                measurementsController.ucBlouseController.text =
                    measurement.ucBlouse.toString();
                measurementsController.cBlouseController.text =
                    measurement.cBlouse.toString();
                measurementsController.wBlouseController.text =
                    measurement.wBlouse.toString();
                measurementsController.shBlouseController.text =
                    measurement.shBlouse.toString();
                measurementsController.slSmBlouseLController.text =
                    measurement.slSmBlouseL.toString();
                measurementsController.slSmBlouseRController.text =
                    measurement.slSmBlouseR.toString();
                measurementsController.aBlouseLController.text =
                    measurement.aBlouseL.toString();
                measurementsController.aBlouseRController.text =
                    measurement.aBlouseR.toString();
                measurementsController.ahBlouseController.text =
                    measurement.ahBlouse.toString();
                measurementsController.fcBlouseController.text =
                    measurement.fcBlouse.toString();
                measurementsController.bcBlouseController.text =
                    measurement.bcBlouse.toString();
                measurementsController.nBlouseController.text =
                    measurement.nBlouse.toString();
                measurementsController.bnBlouseController.text =
                    measurement.bnBlouse.toString();
                return SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        /*SizedBox(
                          height: 200,
                          child: Image.network(
                            widget.document['old_measurement'],
                            fit: BoxFit.fill,
                          ),
                        ),*/
                        const SizedBox(width: 10.0),
                        // Right side content
                        Expanded(
                          flex: 1,
                          child: Table(
                            defaultColumnWidth: const FixedColumnWidth(270.0),
                            border: TableBorder.all(
                                color: Colors.indigo.shade900,
                                style: BorderStyle.solid,
                                width: 2),
                            children: [
                              TableRow(children: [
                                Column(
                                    children: [_buildSectionHeading("Shirt")]),
                                Column(children: [
                                  _buildSectionHeading("Pant/Plazo")
                                ]),
                                Column(
                                    children: [_buildSectionHeading("Blouse")]),
                              ]),
                              TableRow(children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(children: [
                                      _buildTextWithLabel(
                                          "L/P",
                                          measurementsController
                                              .lpShirtController),
                                      _buildTextWithLabel(
                                          "L/S",
                                          measurementsController
                                              .lsShirtController),
                                      _buildTextWithLabel(
                                          "L/CH",
                                          measurementsController
                                              .lchShirtController),
                                      _buildTextWithLabel(
                                          "U.C.",
                                          measurementsController
                                              .ucShirtController),
                                      _buildTextWithLabel(
                                          "C",
                                          measurementsController
                                              .cShirtController),
                                      _buildTextWithLabel(
                                          "W",
                                          measurementsController
                                              .wShirtController),
                                      _buildTextWithLabel(
                                          "H",
                                          measurementsController
                                              .hShirtController),
                                      _buildTextWithLabel(
                                          "Sh",
                                          measurementsController
                                              .shShirtController),
                                      _buildTextWithLabel(
                                          "SL-SM (L )",
                                          measurementsController
                                              .slSmShirtLController),
                                      _buildTextWithLabel(
                                          "SL-SM (R )",
                                          measurementsController
                                              .slSmShirtRController),
                                      _buildTextWithLabel(
                                          "E/B(L)",
                                          measurementsController
                                              .ebShirtLController),
                                      _buildTextWithLabel(
                                          "E/B(R)",
                                          measurementsController
                                              .ebShirtRController),
                                    ]),
                                    Column(children: [
                                      _buildTextWithLabel(
                                          "3/4(L)",
                                          measurementsController
                                              .tfShirtLController),
                                      _buildTextWithLabel(
                                          "3/4(R)",
                                          measurementsController
                                              .tfShirtRController),
                                      _buildTextWithLabel(
                                          "Full",
                                          measurementsController
                                              .fullShirtController),
                                      _buildTextWithLabel(
                                          "A/h",
                                          measurementsController
                                              .ahShirtController),
                                      _buildTextWithLabel(
                                          "A",
                                          measurementsController
                                              .aShirtController),
                                      _buildTextWithLabel(
                                          "D.P.",
                                          measurementsController
                                              .dpShirtController),
                                      _buildTextWithLabel(
                                          "F.C.",
                                          measurementsController
                                              .fcShirtController),
                                      _buildTextWithLabel(
                                          "B.C.",
                                          measurementsController
                                              .bcShirtController),
                                      _buildTextWithLabel(
                                          "N",
                                          measurementsController
                                              .nShirtController),
                                      _buildTextWithLabel(
                                          "B.N.",
                                          measurementsController
                                              .bnShirtController),
                                      _buildTextWithLabel(
                                          "CK",
                                          measurementsController
                                              .ckShirtController),
                                      _buildTextWithLabel(
                                          "Ghera",
                                          measurementsController
                                              .gheraShirtController),
                                    ]),
                                  ],
                                ),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildTextWithLabel(
                                              "L",
                                              measurementsController
                                                  .lPantController),
                                          _buildTextWithLabel(
                                              "W",
                                              measurementsController
                                                  .wPantController),
                                          _buildTextWithLabel(
                                              "H",
                                              measurementsController
                                                  .hPantController),
                                          _buildTextWithLabel(
                                              "Th",
                                              measurementsController
                                                  .thPantController),
                                          _buildTextWithLabel(
                                              "K",
                                              measurementsController
                                                  .kPantController),
                                          _buildTextWithLabel(
                                              "Mori",
                                              measurementsController
                                                  .moriPantController),
                                          _buildSectionHeading("SALWAR"),
                                          _buildTextWithLabel(
                                              "L",
                                              measurementsController
                                                  .lSalwarController),
                                          _buildTextWithLabel(
                                              "M",
                                              measurementsController
                                                  .mSalwarController),
                                          _buildTextWithLabel(
                                              "W",
                                              measurementsController
                                                  .wSalwarController),
                                          _buildTextWithLabel(
                                              "H",
                                              measurementsController
                                                  .hSalwarController),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildSectionHeading("CHURIDAR"),
                                          _buildTextWithLabel(
                                              "L",
                                              measurementsController
                                                  .lChuridarController),
                                          _buildTextWithLabel(
                                              "W",
                                              measurementsController
                                                  .wChuridarController),
                                          _buildTextWithLabel(
                                              "H",
                                              measurementsController
                                                  .hChuridarController),
                                          _buildTextWithLabel(
                                              "Th",
                                              measurementsController
                                                  .thChuridarController),
                                          _buildTextWithLabel(
                                              "K",
                                              measurementsController
                                                  .kChuridarController),
                                          _buildTextWithLabel(
                                              "Mori",
                                              measurementsController
                                                  .moriChuridarController),
                                          _buildSectionHeading(
                                              "Lehnga & Salwar"),
                                          _buildTextWithLabel(
                                              "L",
                                              measurementsController
                                                  .lLehngaController),
                                          _buildTextWithLabel(
                                              "W",
                                              measurementsController
                                                  .wLehngaController),
                                          _buildTextWithLabel(
                                              "H",
                                              measurementsController
                                                  .hLehngaController),
                                          _buildSectionHeading("Gown or Frock"),
                                          _buildTextWithLabel(
                                              "L",
                                              measurementsController
                                                  .lGownController),
                                          _buildTextWithLabel(
                                              "B.L",
                                              measurementsController
                                                  .blGownController),
                                        ],
                                      ),
                                    ]),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildTextWithLabel(
                                              "L",
                                              measurementsController
                                                  .lBlouseController),
                                          _buildTextWithLabel(
                                              "D.P.",
                                              measurementsController
                                                  .dpBlouseController),
                                          _buildTextWithLabel(
                                              "U.C.",
                                              measurementsController
                                                  .ucBlouseController),
                                          _buildTextWithLabel(
                                              "C.",
                                              measurementsController
                                                  .cBlouseController),
                                          _buildTextWithLabel(
                                              "W",
                                              measurementsController
                                                  .wBlouseController),
                                          _buildTextWithLabel(
                                              "Sh",
                                              measurementsController
                                                  .shBlouseController),
                                          _buildTextWithLabel(
                                              "SI. SM(L)",
                                              measurementsController
                                                  .slSmBlouseLController),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildTextWithLabel(
                                              "SI. SM(R)",
                                              measurementsController
                                                  .slSmBlouseRController),
                                          _buildTextWithLabel(
                                              "A(L)",
                                              measurementsController
                                                  .aBlouseLController),
                                          _buildTextWithLabel(
                                              "A(R)",
                                              measurementsController
                                                  .aBlouseRController),
                                          _buildTextWithLabel(
                                              "A/h",
                                              measurementsController
                                                  .ahBlouseController),
                                          _buildTextWithLabel(
                                              "F.C",
                                              measurementsController
                                                  .fcBlouseController),
                                          _buildTextWithLabel(
                                              "B.C",
                                              measurementsController
                                                  .bcBlouseController),
                                          _buildTextWithLabel(
                                              "N",
                                              measurementsController
                                                  .nBlouseController),
                                          _buildTextWithLabel(
                                              "B.N",
                                              measurementsController
                                                  .bnBlouseController),
                                        ],
                                      ),
                                    ]),
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ));
              }
            },
          )),
    );
  }

  Widget _buildSectionHeading(String heading) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: Text(
        heading,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.indigo.shade900,
        ),
      ),
    );
  }

  Widget _buildTextWithLabel(
      String labelText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              labelText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade900,
              ),
            ),
            SizedBox(
              width: 40,
              height: 15,
              child: TextFormField(
                controller: controller,
                // inputFormatters: [DoubleInputFormatter()],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo.shade900),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo.shade900),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void update(String id) async {
    setState(() {
      _isLoading = true;
    });
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference customersMeasurements =
          firestore.collection('customersMeasurements');

      AddMeasurementsModel addMeasurementsModel = AddMeasurementsModel(
        id: measurementId,
        customerId: id,
        lpShirt: measurementsController.lpShirtController.text,
        lsShirt: measurementsController.lsShirtController.text,
        lchShirt: measurementsController.lchShirtController.text,
        ucShirt: measurementsController.ucShirtController.text,
        cShirt: measurementsController.cShirtController.text,
        wShirt: measurementsController.wShirtController.text,
        hShirt: measurementsController.hShirtController.text,
        shShirt: measurementsController.shShirtController.text,
        slSmShirtL: measurementsController.slSmShirtLController.text,
        slSmShirtR: measurementsController.slSmShirtRController.text,
        ebShirtL: measurementsController.ebShirtLController.text,
        ebShirtR: measurementsController.ebShirtRController.text,
        tfShirtL: measurementsController.tfShirtLController.text,
        tfShirtR: measurementsController.tfShirtRController.text,
        fullShirt: measurementsController.fullShirtController.text,
        ahShirt: measurementsController.ahShirtController.text,
        aShirt: measurementsController.aShirtController.text,
        dpShirt: measurementsController.dpShirtController.text,
        fcShirt: measurementsController.fcShirtController.text,
        bcShirt: measurementsController.bcShirtController.text,
        nShirt: measurementsController.nShirtController.text,
        bnShirt: measurementsController.bnShirtController.text,
        ckShirt: measurementsController.ckShirtController.text,
        gheraShirt: measurementsController.gheraShirtController.text,
        lPant: measurementsController.lPantController.text,
        wPant: measurementsController.wPantController.text,
        hPant: measurementsController.hPantController.text,
        thPant: measurementsController.thPantController.text,
        kPant: measurementsController.kPantController.text,
        moriPant: measurementsController.moriPantController.text,
        lSalwar: measurementsController.lSalwarController.text,
        mSalwar: measurementsController.mSalwarController.text,
        wSalwar: measurementsController.wSalwarController.text,
        hSalwar: measurementsController.hSalwarController.text,
        lChuridar: measurementsController.lChuridarController.text,
        wChuridar: measurementsController.wChuridarController.text,
        hChuridar: measurementsController.hChuridarController.text,
        thChuridar: measurementsController.thChuridarController.text,
        kChuridar: measurementsController.kChuridarController.text,
        moriChuridar: measurementsController.moriChuridarController.text,
        lLehnga: measurementsController.lLehngaController.text,
        wLehnga: measurementsController.wLehngaController.text,
        hLehnga: measurementsController.hLehngaController.text,
        lGown: measurementsController.lGownController.text,
        blGown: measurementsController.blGownController.text,
        lBlouse: measurementsController.lBlouseController.text,
        dpBlouse: measurementsController.dpBlouseController.text,
        ucBlouse: measurementsController.ucBlouseController.text,
        cBlouse: measurementsController.cBlouseController.text,
        wBlouse: measurementsController.wBlouseController.text,
        shBlouse: measurementsController.shBlouseController.text,
        slSmBlouseL: measurementsController.slSmBlouseLController.text,
        slSmBlouseR: measurementsController.slSmBlouseRController.text,
        aBlouseL: measurementsController.aBlouseLController.text,
        aBlouseR: measurementsController.aBlouseRController.text,
        ahBlouse: measurementsController.ahBlouseController.text,
        fcBlouse: measurementsController.fcBlouseController.text,
        bcBlouse: measurementsController.bcBlouseController.text,
        nBlouse: measurementsController.nBlouseController.text,
        bnBlouse: measurementsController.bnBlouseController.text,
        remark: measurementsController.remarkController.text,
        // Include image URL
      );
      Map<String, dynamic> updateData = addMeasurementsModel.toMap();

      // Add data to Firestore
      await customersMeasurements.doc(measurementId).update(updateData);

      // Generate a new document ID
      // String id = customers.doc().id;

      /*  // Upload image to Firebase Storage
      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('customer_images')
          .child('image_$id.jpg'); // Example storage path

      firebase_storage.UploadTask uploadTask = ref.putFile(_image!); // Assuming _image is the image file

      await uploadTask.whenComplete(() async {
        // Get download URL of the uploaded image
        String imageUrl = await ref.getDownloadURL();*/

      // Create a new AddCustomerModel object with image URL

      // Convert AddCustomerModel object to a map

      setState(() {
        _isLoading = false;
      });
      //  Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));

      print('Data added successfully!');
    } catch (error) {
      setState(() {
        _isLoading = false;
      });
      print('Error adding data: $error');
    }
  }
}

class DoubleInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    final double? number = double.tryParse(newValue.text);
    if (number == null && newValue.text != '.') {
      // Return the old value if the new value is not a valid double
      return oldValue;
    }

    // Return the new value with the formatted double
    return newValue.copyWith(
      text: newValue.text,
      selection: TextSelection.collapsed(offset: newValue.selection.end),
    );
  }
}

class RemarkTextField extends StatefulWidget {
  @override
  _RemarkTextFieldState createState() => _RemarkTextFieldState();
}

class _RemarkTextFieldState extends State<RemarkTextField> {
  final MeasurementsController measurementsController =
      MeasurementsController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: measurementsController.remarkController,
      maxLines: null, // Allows unlimited lines
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo.shade900),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo.shade900),
        ),
      ),
    );
  }

  @override
  void dispose() {
    measurementsController.remarkController.dispose();
    super.dispose();
  }
}
