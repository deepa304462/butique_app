
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class Common {
  static Widget buildFormFieldWithIcon({
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

  static Widget buildFormFieldWithIconForNotes({
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
  const DrawingBoardUI({Key? key}) : super(key: key);

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
          // Rest of your UI components...
        ],
      ),
    );
  }
}
