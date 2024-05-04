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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Add Measurement",
          style: GoogleFonts.kaiseiTokumin(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w800),
        ),
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          // Shirt section
                          _buildSectionHeading("Shirt"),
                          _buildTextWithLabel("L/P"),
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
                          _buildTextWithLabel("Ghera"),
                        ],
                      ),
                      Column(
                        children: [
                          _buildSectionHeading("Pant/Plazo"),
                          // Pant/Plazo section
                          _buildTextWithLabel("L"),
                          _buildTextWithLabel("W"),
                          _buildTextWithLabel("H"),
                          _buildTextWithLabel("Th"),
                          _buildTextWithLabel("K"),
                          _buildTextWithLabel("Mori"),
                        ],
                      ),
                      Column(
                        children: [
                          _buildSectionHeading("Blouse"),
                          // Blouse section
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
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
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
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildTextWithLabel(String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        width: 150,
        child: Row(
          children: [
            Text(
              labelText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: TextFormField(
                inputFormatters: [DoubleInputFormatter()],
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: '0.00',
                  floatingLabelBehavior:
                      FloatingLabelBehavior.never, // Icon color is black
                  border: OutlineInputBorder(),
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

class DrawingBoardUI extends StatelessWidget {
  const DrawingBoardUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // Outline with gray border
      ),
      child: Stack(
        children: [
          // Four colored dots
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.red, // Color of the first dot
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 40,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.green, // Color of the second dot
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 70,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.blue, // Color of the third dot
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 100,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.black, // Color of the fourth dot
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Round shape
          Positioned(
            top: 10,
            left: 130,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.yellow, // Color of the round shape
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Delete icon
          const Positioned(
            top: 10,
            left: 160,
            child: Icon(
              Icons.delete,
              size: 30,
            ),
          ),
          // Undo icon
          const Positioned(
            top: 10,
            left: 190,
            child: Icon(
              Icons.edit,
              size: 30,
            ),
          ),
          // Redo icon
          const Positioned(
            top: 10,
            left: 220,
            child: Icon(
              Icons.undo,
              size: 30,
            ),
          ),
          // Pencil icon
          const Positioned(
            top: 10,
            left: 250,
            child: Icon(
              Icons.redo,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
