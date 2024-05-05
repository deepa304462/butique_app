import 'package:butique_app/utils/painter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AddMeasurementOrderPage extends StatefulWidget {
  String customerDetailList;
  AddMeasurementOrderPage(this.customerDetailList, {super.key});

  @override
  State<AddMeasurementOrderPage> createState() =>
      _AddMeasurementOrderPageState();
}

class _AddMeasurementOrderPageState extends State<AddMeasurementOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
          TextButton(onPressed: (){}, child: Text("Save",style: TextStyle(
            fontSize: 18
          ),))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Left side image
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      "assets/meserment.jpeg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                // Right side content
                Expanded(
                  flex: 1,
                  child: Table(
                    defaultColumnWidth: const FixedColumnWidth(120.0),
                    border: TableBorder.all(
                        color: Colors.indigo.shade900,
                        style: BorderStyle.solid,
                        width: 2),
                    children: [
                      TableRow( children: [
                        Column(children:[_buildSectionHeading("Shirt")]),
                        Column(children:[_buildSectionHeading("Pant/Plazo")]),
                        Column(children:[_buildSectionHeading("Blouse")]),
                      ]),
                       TableRow(children: [
                        Column(children:[_buildTextWithLabel("L/P"),
                          _buildTextWithLabel("L/CH"),
                          _buildTextWithLabel("C"),
                          _buildTextWithLabel("W"),
                          _buildTextWithLabel("Sh"),
                          _buildTextWithLabel("R"),
                          _buildTextWithLabel("SL-SM ( )"),
                          _buildTextWithLabel("E/B"),
                          _buildTextWithLabel("3/4"),
                          _buildTextWithLabel("( )"),
                          _buildTextWithLabel("( ) Full"),
                          _buildTextWithLabel("A/h"),
                          _buildTextWithLabel("D.P."),
                          _buildTextWithLabel("F.C."),
                          _buildTextWithLabel("B.C."),
                          _buildTextWithLabel("N"),
                          _buildTextWithLabel("B.N."),
                          _buildTextWithLabel("CK"),
                          _buildTextWithLabel("Ghera"),]),
                        Column(children:[Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildTextWithLabel("L"),
                            _buildTextWithLabel("W"),
                            _buildTextWithLabel("H"),
                            _buildTextWithLabel("Th"),
                            _buildTextWithLabel("K"),
                            _buildTextWithLabel("Mori"),
                            _buildSectionHeading("SALWAR"),
                            _buildTextWithLabel("L"),
                            _buildTextWithLabel("M"),
                            _buildTextWithLabel("W"),
                            _buildTextWithLabel("H"),
                            _buildSectionHeading("CHURIDAR"),
                            _buildTextWithLabel("L"),
                            _buildTextWithLabel("W"),
                            _buildTextWithLabel("Th"),
                            _buildTextWithLabel("K"),
                            _buildTextWithLabel("Mori"),
                            _buildSectionHeading("Lehnga & Salwar"),
                            _buildTextWithLabel("L"),
                            _buildTextWithLabel("W"),
                            _buildTextWithLabel("H"),
                            _buildSectionHeading("Gown or Frock"),
                            _buildTextWithLabel("L"),
                            _buildTextWithLabel("B.L"),
                          ],
                        )]),
                        Column(children:[
                          _buildTextWithLabel("L"),
                          _buildTextWithLabel("D.P."),
                          _buildTextWithLabel("U.C."),
                          _buildTextWithLabel("C."),
                          _buildTextWithLabel("W"),
                          _buildTextWithLabel("Sh"),
                          _buildTextWithLabel("SI. SM_"),
                          _buildTextWithLabel("R"),
                          _buildTextWithLabel("()"),
                          _buildTextWithLabel("A/h"),
                          _buildTextWithLabel("F.C"),
                          _buildTextWithLabel("B.C"),
                          _buildTextWithLabel("N"),
                          _buildTextWithLabel("B.N"),
                          RemarkTextField()]),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
             SizedBox(
              height: MediaQuery.of(context).size.height-100,
                child: const PainterPage( title: '',))
          ],
        )),
      ),
    );
  }

  Widget _buildSectionHeading(String heading) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        heading,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.indigo.shade900,
        ),
      ),
    );
  }

  Widget _buildTextWithLabel(String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        width: 180,
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
              width: 100,
              child: TextFormField(
                inputFormatters: [DoubleInputFormatter()],
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
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      maxLines: null, // Allows unlimited lines
      keyboardType: TextInputType.multiline,
      decoration: const InputDecoration(
        hintText: 'Enter your remark here...',
        border: OutlineInputBorder(),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
