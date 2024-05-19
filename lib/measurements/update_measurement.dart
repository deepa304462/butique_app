import 'dart:io';

import 'package:butique_app/measurements/controller/measurements_controller.dart';
import 'package:butique_app/mesurement_geterator.dart';
import 'package:butique_app/models/add_customer_measurments_model.dart';
import 'package:butique_app/utils/paint_page2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../providers/my_provider.dart';

// ignore: must_be_immutable
class UpdateMeasurementOrderPage extends StatefulWidget {
  bool isUpdate;
  final DocumentSnapshot<Object?> document;
  final int index;

  UpdateMeasurementOrderPage(this.isUpdate, this.document, this.index,
      {super.key});

  @override
  State<UpdateMeasurementOrderPage> createState() =>
      _UpdateMeasurementOrderPageState();
}

class _UpdateMeasurementOrderPageState
    extends State<UpdateMeasurementOrderPage> {
  final MeasurementsController measurementsController =
      MeasurementsController();
  ScreenshotController screenshotController = ScreenshotController();

  bool _isLoading = false;
  bool _isRefresh = true;
  String measurementId = "";
  String lastUpdated = "";
  String drawingHorizontal = "";
  String drawing = "";

  Map<String, dynamic>? customerData;

  @override
  void initState() {
    fetchDocumentById(widget.document['id']);
    super.initState();
  }

  Future<void> fetchDocumentById(String documentId) async {
    // Initialize Firebase
    await Firebase.initializeApp();

    // Get reference to Firestore
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    try {
      // Retrieve document from Firestore
      DocumentSnapshot documentSnapshot =
          await firestore.collection('customers').doc(documentId).get();

      if (documentSnapshot.exists) {
        // Document exists, retrieve data
        Object? object = documentSnapshot.data();
        customerData = object as Map<String, dynamic>;
        // Do something with the data

        print('Document ID: ${documentSnapshot.id}, Data: $customerData');
      } else {
        print('Document does not exist');
      }
    } catch (e) {
      // Handle errors
      print('Error fetching document: $e');
    }
  }

  String formatTimestamp(Timestamp timestamp) {
    DateTime dateTime = timestamp.toDate();
    return DateFormat('dd-MM-yyyy HH:mm a').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          widget.isUpdate ? "Update Measurement" : "Add Measurement",
          style: GoogleFonts.kaiseiTokumin(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        actions: [
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xff4A4EBD))),
              onPressed: () async {
                await screenshotController
                    .capture(delay: const Duration(milliseconds: 10))
                    .then((Uint8List? image) async {
                  if (image != null) {
                    final directory = await getApplicationDocumentsDirectory();
                    final imagePath =
                        await File('${directory.path}/image.png').create();
                    await imagePath.writeAsBytes(image);

                    /// Share Plugin
                    await Share.shareXFiles([XFile(imagePath.path)]);
                  }
                });
              },
              child: Text(
                "Print",
                style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            width: 8,
          ),
          _isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                  color: Color(0xff4A4EBD),
                ))
              : ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff4A4EBD))),
                  onPressed: () {
                    if (widget.isUpdate) {
                      final id = widget.document['id'];
                      update(id);
                    } else {
                      addData();
                    }
                  },
                  child: Text(
                    "Save",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
        ],
      ),
      body: Screenshot(
        controller: screenshotController,
        child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('customersMeasurements')
                  .where('customerId', isEqualTo: widget.document.id)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  if (_isRefresh) {
                    _isRefresh = false;
                    if (snapshot.data!.docs.isNotEmpty) {
                      DocumentSnapshot document = snapshot.data!.docs.first;
                      final measurement = AddMeasurementsModel.fromMap(
                          document.data() as Map<String, dynamic>);

                      measurementId = measurement.id ?? '';
                      drawing = measurement.drawing ?? '';
                      lastUpdated =
                          formatTimestamp(measurement.lastUpdated ?? '');
                      drawingHorizontal = measurement.drawingHorizontal ?? '';
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
                      measurementsController.remarkController.text =
                          measurement.remark.toString();
                    }
                  }

                  return InteractiveViewer(
                    panEnabled: true, // Set it to false to prevent panning.
                    boundaryMargin: const EdgeInsets.all(1000),
                    minScale: 0.5,
                    maxScale: 4,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (widget.isUpdate) ...[
                              Text("Last updated ${lastUpdated}",
                                  style: const TextStyle(fontSize: 16)),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                            Text(widget.document['name'],
                                style: const TextStyle(fontSize: 16)),
                            const SizedBox(
                              width: 30,
                            ),
                            Text(
                                widget.document['phone']
                                    .toString()
                                    .substring(8, 10),
                                style: const TextStyle(fontSize: 16)),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  widget.document['old_measurement'] == null
                                      ? Container(
                                          height: 300,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "No measuremnt available",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  color: Colors.grey.shade500,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      : Container(
                                          height: 300,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                          ),
                                          child: Image.network(
                                            widget.document['old_measurement'],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    child: RotatedBox(
                                        quarterTurns: 1,
                                        child: PaintPage2(
                                          isHorizontal: true,
                                          oldDrawing: widget.isUpdate
                                              ? drawingHorizontal
                                              : "",
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            // Right side content
                            Consumer<MyModel>(
                              builder: (context, venuePageViewModel, _) {
                                return Visibility(
                                    visible: venuePageViewModel.myValue,
                                    child: Expanded(
                                      flex: 1,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Table(
                                              defaultColumnWidth:
                                                  const FixedColumnWidth(120.0),
                                              border: TableBorder.all(
                                                  color: Colors.indigo.shade900,
                                                  style: BorderStyle.solid,
                                                  width: 2),
                                              children: [
                                                TableRow(children: [
                                                  Column(children: [
                                                    _buildSectionHeading(
                                                        "Shirt")
                                                  ]),
                                                  Column(children: [
                                                    _buildSectionHeading(
                                                        "Shirt")
                                                  ]),
                                                  Column(children: [
                                                    _buildSectionHeading(
                                                        "Lehnga & Salwar")
                                                  ]),
                                                ]),
                                                TableRow(children: [
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
                                                  ]),
                                                  Column(children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
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
                                                        _buildSectionHeading(
                                                            "Pant/Plazo"),
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
                                                        _buildSectionHeading(
                                                            "SALWAR"),
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
                                                        _buildSectionHeading(
                                                            "CHURIDAR"),
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
                                                      ],
                                                    )
                                                  ]),
                                                  Column(children: [
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
                                                    _buildSectionHeading(
                                                        "Gown or Frock"),
                                                    _buildTextWithLabel(
                                                        "L",
                                                        measurementsController
                                                            .lGownController),
                                                    _buildTextWithLabel(
                                                        "B.L",
                                                        measurementsController
                                                            .blGownController),
                                                    _buildSectionHeading(
                                                        "Blouse"),
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
                                                  ]),
                                                ]),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ));
                              },
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Remark",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo.shade900,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RemarkTextField(
                            remarkController:
                                measurementsController.remarkController,
                          ),
                        )
                      ],
                    ),
                  );
                }
              },
            )),
      ),
    );
  }

  Widget _buildSectionHeading(String heading) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
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
      padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
      child: SizedBox(
        width: 100,
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
              width: 20,
              height: 30,
              child: TextFormField(
                controller: controller,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 12,
                ),
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

  void addData() async {
    setState(() {
      _isLoading = true;
    });
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference customers =
          firestore.collection('customersMeasurements');

      // Generate a new document ID
      String id = customers.doc().id;

      // Create a new AddCustomerModel object with image URL
      AddMeasurementsModel addMeasurementsModel = AddMeasurementsModel(
        id: id,
        customerId: widget.document.id,
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
        drawing: Provider.of<MyModel>(context, listen: false).drawingData,
        drawingHorizontal:
            Provider.of<MyModel>(context, listen: false).drawingHorizontalData,
        lastUpdated: DateTime.now(),
        // Include image URL
      );

      // Convert AddCustomerModel object to a map
      Map<String, dynamic> newData = addMeasurementsModel.toMap();

      // Add data to Firestore
      await customers.doc(id).set(newData);

      setState(() {
        _isLoading = false;
      });
      print('Data added successfully!');
    } catch (error) {
      setState(() {
        _isLoading = false;
      });
      print('Error adding data: $error');
    }
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
        drawing: Provider.of<MyModel>(context, listen: false).drawingData,
        drawingHorizontal:
            Provider.of<MyModel>(context, listen: false).drawingHorizontalData,
        lastUpdated: DateTime.now(),
        // Include image URL
      );
      Map<String, dynamic> updateData = addMeasurementsModel.toMap();

      // Add data to Firestore
      await customersMeasurements.doc(measurementId).update(updateData);

      setState(() {
        _isRefresh = true;
        _isLoading = false;
      });

      //await MeasurementGenerator.generate(addMeasurementsModel, customerData);
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
  final remarkController;

  const RemarkTextField({Key? key, required this.remarkController})
      : super(key: key);
  @override
  _RemarkTextFieldState createState() => _RemarkTextFieldState();
}

class _RemarkTextFieldState extends State<RemarkTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.remarkController,
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
}
