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

class _AddMeasurementOrderPageState extends State<AddMeasurementOrderPage> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w800),
        )/*Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(
                  Icons.arrow_back,
                  size: 28,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Text(
              "Add Measurement",
              style: GoogleFonts.kaiseiTokumin(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
          ],
        )*/,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 1.5,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Image.asset(
                          "meserment.jpeg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: _buildFormFieldWithIconForNotes(
                          heading: 'Notes',
                          labelText: '',
                        ),
                      ),
                    ],
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Shoulder',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Cross Back',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Cross Front',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Upper Bust',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Chest',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Below Bust',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Waist',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Mid Waist',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Hip',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Arm Hole',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Bicap Rounding',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Elbow Rounding',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Wrist',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Sleeve Length',
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
                                child: _buildFormFieldWithIcon(
                                  heading: 'Neck Depth',
                                  labelText: 'Front',
                                ),
                              ),
                              const SizedBox(width: 20.0),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 6,
                                child: _buildFormFieldWithIcon(
                                  heading: '',
                                  labelText: 'Back',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Yoke Length',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Yoke Rounding',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Kurta Length',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Blouse Length',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Peticoat Length',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Waist',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Thigh',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Knee',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Calf',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Ankle',
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
                            child: _buildFormFieldWithIcon(
                              heading: 'Waist to Knee',
                              labelText: '0.00',
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                            child: _buildFormFieldWithIcon(
                              heading: 'Apex',
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
              DrawingBoardUI(),
              const SizedBox(height: 20.0),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff1676F3)),
                      fixedSize: MaterialStatePropertyAll(Size(
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

  Widget _buildFormFieldWithIcon({
    required String labelText,
    required String heading,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              heading,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 2.0), // Adjust spacing as needed
          ],
        ),
        const SizedBox(height: 5.0), // Adjust spacing as needed
        TextFormField(
          inputFormatters: [DoubleInputFormatter()],
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: labelText,
            floatingLabelBehavior:
                FloatingLabelBehavior.never, // Icon color is black
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  Widget _buildFormFieldWithIconForNotes({
    required String labelText,
    required String heading,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              heading,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 2.0), // Adjust spacing as needed
          ],
        ),
        const SizedBox(height: 5.0), // Adjust spacing as needed
        TextFormField(
          maxLines: 10,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: labelText,
            floatingLabelBehavior:
                FloatingLabelBehavior.never, // Icon color is black
            border: const OutlineInputBorder(),
          ),
        ),
      ],
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
              decoration: BoxDecoration(
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
              decoration: BoxDecoration(
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
              decoration: BoxDecoration(
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
              decoration: BoxDecoration(
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
              decoration: BoxDecoration(
                color: Colors.yellow, // Color of the round shape
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Delete icon
          Positioned(
            top: 10,
            left: 160,
            child: Icon(
              Icons.delete,
              size: 30,
            ),
          ),
          // Undo icon
          Positioned(
            top: 10,
            left: 190,
            child: Icon(
              Icons.edit,
              size: 30,
            ),
          ),
          // Redo icon
          Positioned(
            top: 10,
            left: 220,
            child: Icon(
              Icons.undo,
              size: 30,
            ),
          ),
          // Pencil icon
          Positioned(
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
