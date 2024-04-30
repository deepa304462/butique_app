import 'package:butique_app/add_measurement_order_page.dart';
import 'package:butique_app/add_new_customer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_measurment_new.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> customerDetailList = List.generate(50, (index) => 'Vaibhav $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 200,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select Customers",
                  style: GoogleFonts.kaiseiTokumin(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xff1676F3)),
                        fixedSize: MaterialStatePropertyAll(Size(
                          251,
                          62,
                        ))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const AddNewCustomer()));
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          "Add New Customer",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(13)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Search your customers",
                      labelStyle: GoogleFonts.poppins(
                          color: Colors.grey.shade500,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 24.01,
                      ),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: customerDetailList.length,
          itemBuilder: (context, index) {
            // Check if the current item is the last item
            final isLastItem = index == customerDetailList.length - 1;

            return Column(
              children: [
                ListTile(
                  title: Text(customerDetailList[index]),
                  titleTextStyle: GoogleFonts.kaiseiTokumin(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  subtitle: const Text("G-803 Gls avenue 51 sec 92"),
                  subtitleTextStyle: GoogleFonts.poppins(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                  ),
                  trailing: const Text("9068064102"),
                  leadingAndTrailingTextStyle: GoogleFonts.poppins(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight:FontWeight.w500
                  ),
                  onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder: (_)=>AddMeasurementNew(customerDetailList[index])));
                  },
                ),
                // Add a divider if the current item is not the last item
                if (!isLastItem) const Divider(), // Add a Divider
              ],
            );
          },
        ),
      ),
    );
  }
}
