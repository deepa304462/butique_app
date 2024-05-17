import 'package:butique_app/add_new_customer.dart';
import 'package:butique_app/measurements/update_measurement.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
  }

  final List<String> customerDetailList =
      List.generate(50, (index) => 'Vaibhav $index');
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const AddNewCustomer()));
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
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
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
        child: StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance.collection('customers').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              // Corrected condition
              print('Error: ${snapshot.error}');
              return Text('Error: ${snapshot.error}');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(); // Or any loading indicator
            }

            final List<DocumentSnapshot> documents =
                snapshot.data!.docs; // List of documents

            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: documents.length,
              itemBuilder: (context, index) {
                final isLastItem =
                    index == documents.length - 1; // Corrected index
                //final chatItem = state.getChatListResponseModel.data![index];
                final DocumentSnapshot document = documents[index];
                final data = document.data() as Map<String, dynamic>;
                if (searchQuery.isNotEmpty &&
                    (!(data['name'] ?? '')
                        .toLowerCase()
                        .contains(searchQuery.toLowerCase()) && !(data['phone'] ?? '')
                        .toLowerCase()
                        .contains(searchQuery.toLowerCase()))) {
                  return const SizedBox.shrink();
                }

                return Column(
                  children: [
                    ListTile(
                      title: Text(data['name']),
                      titleTextStyle: GoogleFonts.kaiseiTokumin(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      subtitle: Text(data['address']),
                      subtitleTextStyle: GoogleFonts.poppins(
                        color: Colors.grey.shade700,
                        fontSize: 16,
                      ),
                      trailing: SizedBox(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(data['phone']),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text("Alert!!!",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.red)),
                                            content: Text(
                                                "Are yo sure you want to delete ${data['name']}",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: Colors.black)),
                                            actions: [
                                              Row(
                                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                children: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text('Close',style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16,
                                                        color: Colors.black)),
                                                  ),
                                                  TextButton(
                                                    onPressed: ()  {
                                                      FirebaseFirestore.instance
                                                          .collection('customers')
                                                          .doc(document.id)
                                                          .delete();
                                                      Navigator.of(context).pop();
                                                      },
                                                    child: Text('Delete',style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16,
                                                        color: Colors.red)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        });

                                  });
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Color(0xff1676F3),
                                  size: 35,
                                ))
                          ],
                        ),
                      ),
                      leadingAndTrailingTextStyle: GoogleFonts.poppins(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      onTap: () async {
                        final snapshot = await FirebaseFirestore.instance
                            .collection("customersMeasurements")
                            .where("customerId", isEqualTo: document.id)
                            .get();

                        if (snapshot.docs.isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => UpdateMeasurementOrderPage(
                                    true,
                                        document,
                                        index,
                                      )));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => UpdateMeasurementOrderPage(
                                    false,
                                    document,
                                    index,
                                  )));
                        }
                      },
                    ),
                    if (!isLastItem) const Divider(), // Add a Divider
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
