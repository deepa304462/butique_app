import 'package:butique_app/measurements/controller/measurements_controller.dart';
import 'package:butique_app/models/add_customer_measurments_model.dart';
import 'package:butique_app/pdf_create_ui.dart';
import 'package:butique_app/providers/my_provider.dart';
import 'package:butique_app/utils/paint_page2.dart';
import 'package:butique_app/utils/painter_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../home_page.dart';
import '../mesurement_geterator.dart';

// ignore: must_be_immutable
class AddMeasurementOrderPage extends StatefulWidget {
 final DocumentSnapshot<Object?> document;
 final int index;

  const AddMeasurementOrderPage(this.document,this.index ,  {super.key});

  @override
  State<AddMeasurementOrderPage> createState() =>
      _AddMeasurementOrderPageState();
}

class _AddMeasurementOrderPageState extends State<AddMeasurementOrderPage> {
  final MeasurementsController measurementsController = MeasurementsController();

  bool _isLoading = false;
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Add Measurement",
          style: GoogleFonts.kaiseiTokumin(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        actions: [
         _isLoading ? const Center(child: CircularProgressIndicator(color: Colors.blueAccent,)) : ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
              onPressed: (){
            addData();
          }, child: Text("Save",style: GoogleFonts.inter(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),))
        ],
      ),
      body:  InteractiveViewer(
        panEnabled: true, // Set it to false to prevent panning.
        boundaryMargin: const EdgeInsets.all(500),
        minScale: 0.5,
        maxScale: 4,
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Left side image
          Expanded(
            flex: 1,
            child: RotatedBox(
                quarterTurns: 0, child: PaintPage2(isHorizontal: false,oldDrawing: "")),
          ),
          const SizedBox(width: 20.0),


          Consumer<MyModel>(
            builder: (context, venuePageViewModel, _) {
              return Visibility(
                  visible: venuePageViewModel.myValue,
                  child: Expanded(
                    flex: 1,
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
                                _buildSectionHeading("Shirt")
                              ]),
                              Column(children: [
                                _buildSectionHeading("Pant/Plazo")
                              ]),
                              Column(children: [
                                _buildSectionHeading("Blouse")
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
                              Column(children: [
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
                                  ],
                                )
                              ]),
                              Column(children: [
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
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: MediaQuery.of(context)
                                        .size
                                        .width,
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
                                  child: RemarkTextField(remarkController: measurementsController.remarkController,),
                                )
                              ]),
                            ]),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height *
                              0.25,
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Image.network(
                              widget.document['old_measurement'],
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
            },
          ),
        ],
            ),
      ));
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
      CollectionReference customers = firestore.collection('customersMeasurements');

      // Generate a new document ID
      String id = customers.doc().id;

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
           // Include image URL
        );

        // Convert AddCustomerModel object to a map
        Map<String, dynamic> newData = addMeasurementsModel.toMap();

        // Add data to Firestore
        await customers.doc(id).set(newData);

        setState(() {
          _isLoading = false;
        });
      await MeasurementGenerator.generate(addMeasurementsModel, customerData);
       // Navigator.push(context, MaterialPageRoute(builder: (_)=> PdfCreateUi(addMeasurementsModel)));

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

  const RemarkTextField({Key? key, required this.remarkController}) : super(key: key);

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
