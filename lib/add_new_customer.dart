import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewCustomer extends StatefulWidget {
  const AddNewCustomer({super.key});

  @override
  State<AddNewCustomer> createState() => _AddNewCustomerState();
}

class _AddNewCustomerState extends State<AddNewCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Text(
          "Add new customers",
          style: GoogleFonts.kaiseiTokumin(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w800),
        ),/*Row(
          children: [
            InkWell(
              onTap: (){
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
              "Add new customers",
              style: GoogleFonts.kaiseiTokumin(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
          ],
        )*/
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildFormFieldWithIcon(
              heading: 'Customer Full Name',
              icon: Icons.person, labelText: 'Enter Full Name',
            ),
            const SizedBox(height: 20.0),
            _buildFormFieldWithIcon(
              heading: 'Customer Mobile Number',
              icon: Icons.phone,
              labelText: "Enter Mobile Number"
            ),
            const SizedBox(height: 20.0),
            _buildFormFieldWithIcon(
              heading: 'Customer Complete Address',
              icon: Icons.location_on,
              labelText: "Address"
            ),
            const SizedBox(height: 20.0),
            _buildFormFieldWithIcon(
                heading: 'Customer Complete Address',
                icon: Icons.location_on,
                labelText: "Address"
            ),
            const SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      "Old Measurement",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 2.0), // Adjust spacing as needed
                    Text(
                      '',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0, // Adjust font size as needed
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0), // Adjust spacing as needed
                IconButton(onPressed: (){

                }, icon: const Icon(Icons.photo_camera))
              ],
            ),
            const Spacer(),
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
                  "Save & Continue",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildFormFieldWithIcon({
    required String labelText,
    required IconData icon,
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
            const Text(
              '*',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0, // Adjust font size as needed
              ),
            ),
          ],
        ),
        const SizedBox(height: 5.0), // Adjust spacing as needed
        TextFormField(
          decoration: InputDecoration(
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            prefixIcon: Icon(icon, color: Colors.black), // Icon color is black
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

}
