import 'package:butique_app/screens/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  String? _validatePhoneNumber(String? value) {
    final phoneRegExp = RegExp(r'^\d{10}$');
    if (value == null || value.isEmpty) {
      return 'Please enter your mobile number';
    } else if (!phoneRegExp.hasMatch(value)) {
      return 'Please enter a valid 10-digit mobile number';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50,top: 20,right: 50),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/tailor_emoji.png",
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 4,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Login",
                style: GoogleFonts.kaiseiTokumin(
                    fontSize: 45, color: const Color(0xff4A4EBD),fontWeight:FontWeight.bold),
              ),
              const SizedBox(height: 50),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration:  InputDecoration(
                  labelText: 'Mobile Number',
                  labelStyle:GoogleFonts.poppins(
                      fontSize: 20, color: Colors.grey.shade500,),
                  prefixIcon: Icon(Icons.phone,color: Colors.grey.shade500,),
                  border: const UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400, // Set the color for the focused underline
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,// Set the color for the enabled underline
                    ),
                  ),

                ),
                validator: _validatePhoneNumber,
              ),
              const SizedBox(height: 40),
              TextFormField(
                controller: _passwordController,
                obscureText: obscureText,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle:GoogleFonts.poppins(
                    fontSize: 20, color: Colors.grey.shade500,),
                  prefixIcon:  Icon(Icons.lock,color: Colors.grey.shade500,),
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey.shade500,

                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                  border: const UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400, // Set the color for the focused underline
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,// Set the color for the enabled underline
                    ),
                  ),
                ),
                ),
              Spacer(),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                      const MaterialStatePropertyAll(Color(0xff5057DC)),
                      fixedSize: MaterialStatePropertyAll(
                        Size(MediaQuery.of(context).size.width/1.5,80),
                      ),
                      shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)
                          )
                      )
                  ),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>BottomNavScreen()));
                    }
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(fontSize: 24, color: Colors.white,fontWeight:FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/machin_image.png",
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 4,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
