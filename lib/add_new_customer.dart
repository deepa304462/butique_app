import 'dart:io';
import 'package:butique_app/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'models/add_cutomer_model.dart';

class AddNewCustomer extends StatefulWidget {
  const AddNewCustomer({super.key});

  @override
  State<AddNewCustomer> createState() => _AddNewCustomerState();
}

class _AddNewCustomerState extends State<AddNewCustomer> {
  TextEditingController _name = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _address = TextEditingController();
  File? _image;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildFormFieldWithIcon(
                    validator: validateName,
                    controller: _name,
                    heading: 'Customer Full Name',
                    icon: Icons.person,
                    labelText: 'Enter Full Name',
                  ),
                  const SizedBox(height: 20.0),
                  _buildFormFieldWithIcon(
                    validator: validateMobile,
                    controller: _mobile,
                    heading: 'Customer Mobile Number',
                    icon: Icons.phone,
                    labelText: "Enter Mobile Number",
                  ),
                  const SizedBox(height: 20.0),
                  _buildFormFieldWithIcon(
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
                          const SizedBox(width: 2.0), // Adjust spacing as needed
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
                          backgroundColor: MaterialStatePropertyAll(Color(0xff1676F3)),
                          fixedSize: MaterialStatePropertyAll(Size(230, 50)),
                        ),
                        child: Text(
                         _image == null? "Upload old measurement":"Change measurement",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        onPressed: () {
                          WidgetsBinding.instance!.addPostFrameCallback((_) {
                            final RenderBox overlay = Overlay.of(context)!
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
               Spacer(),
               _isLoading? Center(child: CircularProgressIndicator(color: Color(0xff1676F3))):   ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color(0xff1676F3)),
                      fixedSize: MaterialStatePropertyAll(Size(330, 50)),
                    ),
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        addData();
                      }else{
                        Fluttertoast.showToast(msg: "Please fill all the fields",fontSize: 24,backgroundColor: Colors.red);
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
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }

  Widget _buildFormFieldWithIcon({
    required String labelText,
    required IconData icon,
    required String heading,
    required TextEditingController controller,
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
    if (value == null || value.isEmpty) {
      return 'Please enter an address';
    }
    return null;
  }

  void addData() async {
    setState(() {
      _isLoading = true;
    });
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference customers = firestore.collection('customers');

      // Generate a new document ID
      String id = customers.doc().id;

      // Upload image to Firebase Storage
      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('customer_images')
          .child('image_$id.jpg'); // Example storage path

      firebase_storage.UploadTask uploadTask = ref.putFile(_image!); // Assuming _image is the image file

      await uploadTask.whenComplete(() async {
        // Get download URL of the uploaded image
        String imageUrl = await ref.getDownloadURL();

        // Create a new AddCustomerModel object with image URL
        AddCustomerModel customer = AddCustomerModel(
          id: id,
          name: _name.text,
          phone: _mobile.text,
          address: _address.text,
          oldMeasurement: imageUrl, // Include image URL
        );

        // Convert AddCustomerModel object to a map
        Map<String, dynamic> newData = customer.toMap();

        // Add data to Firestore
        await customers.doc(id).set(newData);

        setState(() {
          _isLoading = false;
        });
        Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));

        print('Data added successfully!');
      });
    } catch (error) {
        setState(() {
          _isLoading = false;
        });
      print('Error adding data: $error');
    }
  }

  Future<void> _getImageFromCamera() async {
    final pickedFile =
        await ImagePicker.platform.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future<void> _getImageFromGallery() async {
    final pickedFile =
        await ImagePicker.platform.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
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
              _getImageFromCamera();
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Select from Gallery'),
            onTap: () {
              Navigator.pop(context);
              _getImageFromGallery();
            },
          ),
        ),
      ],
    );
  }
}
