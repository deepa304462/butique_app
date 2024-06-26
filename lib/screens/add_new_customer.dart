import 'dart:io';
import 'package:butique_app/screens/bottom_navigation.dart';
import 'package:butique_app/screens/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../models/add_cutomer_model.dart';

class AddNewCustomer extends StatefulWidget {
  AddNewCustomer( {super.key});

  @override
  State<AddNewCustomer> createState() => _AddNewCustomerState();
}

class _AddNewCustomerState extends State<AddNewCustomer> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _address = TextEditingController();
  File? _image;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          toolbarHeight: 100,
          title: Text(
            "Add new customers",
            style: GoogleFonts.kaiseiTokumin(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 50,top: 20,right: 50),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildFormFieldWithIcon(
                      isMandatory: true,
                      validator: validateName,
                      controller: _name,
                      heading: 'Customer Full Name',
                      icon: Icons.person,
                      labelText: 'Enter Full Name',
                    ),
                    const SizedBox(height: 20.0),
                    _buildFormFieldWithIcon(
                      isMandatory: true,
                      validator: validateMobile,
                      controller: _mobile,
                      heading: 'Customer Mobile Number',
                      icon: Icons.phone,
                      labelText: "Enter Mobile Number",
                    ),
                    const SizedBox(height: 20.0),
                    _buildFormFieldWithIcon(
                      isMandatory: false,
                      validator: validateAddress,
                      controller: _address,
                      heading: 'Customer Complete Address',
                      icon: Icons.location_on,
                      labelText: "Address",
                    ),
                    const SizedBox(height: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            _image == null
                                ? const Text(
                                    "Old Measurement",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  )
                                : SizedBox(
                                    height: 400,
                                    width: 400,
                                    child: Image.file(
                                      _image!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                            const SizedBox(
                                width: 2.0), // Adjust spacing as needed
                            const Text(
                              '',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0, // Adjust font size as needed
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5.0), // Adjust spacing as needed
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff4A4EBD)),
                            fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                          ),
                          child: Text(
                            _image == null
                                ? "Upload old measurement"
                                : "Change measurement",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              final RenderBox overlay = Overlay.of(context)
                                  .context
                                  .findRenderObject() as RenderBox;
                              final RelativeRect position = RelativeRect.fromSize(
                                Rect.fromCenter(
                                  center: overlay.size.center(Offset.zero),
                                  width: 0,
                                  height: 0,
                                ),
                                const Size(0, 0),
                              );
                              _showImagePickerOptions(context, position);
                            });
                          },
                        )
                      ],
                    ),
                    const Spacer(),
                    _isLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                                color: Color(0xff4A4EBD)))
                        : ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll(Color(0xff4A4EBD)),
                              fixedSize: MaterialStatePropertyAll(Size(
                                  MediaQuery.of(context).size.width / 1.5, 80)),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)
                                )
                              )
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                addData();
                              } else {
                                Fluttertoast.showToast(
                                    msg: "Please fill all the fields",
                                    fontSize: 24,
                                    backgroundColor: Colors.red);
                              }

                              //todo implement on tap
                            },
                            child: Text(
                              "Save & Continue",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                    const SizedBox(
                      height: 80,
                    )

                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Widget _buildFormFieldWithIcon({
    required String labelText,
    required IconData icon,
    required String heading,
    required TextEditingController controller,
    required bool isMandatory,
    String? Function(String?)? validator, // Validator function
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
            Text(
              isMandatory ? '*' : '',
              style: const TextStyle(
                color: Colors.red,
                fontSize: 20.0, // Adjust font size as needed
              ),
            ),
          ],
        ),
        const SizedBox(height: 5.0), // Adjust spacing as needed
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            prefixIcon: Icon(icon, color: Colors.black), // Icon color is black
            border: const OutlineInputBorder(),
          ),
          validator: validator, // Assign validator function
        ),
      ],
    );
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a name';
    }
    return null;
  }

  String? validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a mobile number';
    }
    if (value.length != 10) {
      return 'Mobile number must be 10 digits long';
    }
    return null;
  }

  String? validateAddress(String? value) {
    // Since the address field is optional, return null to indicate no validation error
    return null;
  }

  void addData() async {
    setState(() {
      _isLoading = true;
    });
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference customers = firestore.collection('customers');

      String id = customers.doc().id;

      if (_image != null) {
        firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
            .ref()
            .child('customer_images')
            .child('image_$id.jpg');

        firebase_storage.UploadTask uploadTask = ref.putFile(_image!);

        await uploadTask.whenComplete(() async {
          String imageUrl = await ref.getDownloadURL();
          AddCustomerModel customer = AddCustomerModel(
            id: id,
            name: _name.text,
            phone: _mobile.text,
            address: _address.text,
            oldMeasurement: imageUrl,
          );
          Map<String, dynamic> newData = customer.toMap();
          await customers.doc(id).set(newData);
          _navigateToHomePage();
          print('Data added successfully!');
        });
      } else {
        // If no image is uploaded, create AddCustomerModel without old measurement
        AddCustomerModel customer = AddCustomerModel(
          id: id,
          name: _name.text,
          phone: _mobile.text,
          address: _address.text,
        );
        Map<String, dynamic> newData = customer.toMap();
        await customers.doc(id).set(newData);
        _navigateToHomePage();
        print('Data added successfully without old measurement!');
      }
    } catch (error) {
      setState(() {
        _isLoading = false;
      });
      print('Error adding data: $error');
    }
  }

  void _navigateToHomePage() {
    setState(() {
      _isLoading = false;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) =>  BottomNavScreen()),
    );
  }


  getImage(ImageSource source) async {
    ImagePicker picker = ImagePicker();

    XFile? image = await picker.pickImage(source: source);
    if (image != null) {
      CroppedFile? cropped = await ImageCropper().cropImage(
          sourcePath: image.path,
          aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
          compressQuality: 100,
          maxWidth: 700,
          maxHeight: 700,
          compressFormat: ImageCompressFormat.jpg);

      setState(() {
        _image = File(cropped!.path);
      });
    } else {}
  }

  void _showImagePickerOptions(BuildContext context, position) {
    showMenu(
      context: context,
      position: position,
      items: <PopupMenuEntry>[
        PopupMenuItem(
          child: ListTile(
            leading: const Icon(Icons.camera),
            title: const Text('Take Picture'),
            onTap: () {
              Navigator.pop(context);
              getImage(ImageSource.camera);
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Select from Gallery'),
            onTap: () {
              Navigator.pop(context);
              getImage(ImageSource.gallery);
            },
          ),
        ),
      ],
    );
  }
}
