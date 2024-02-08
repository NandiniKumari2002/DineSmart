import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

import 'Customer_Login.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}
class _RegistrationPageState extends State<RegistrationPage> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // final TextEditingController _fullNameController = TextEditingController();
  // final TextEditingController _phoneNumberController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  //
  // Future<void> _register() async {
  //   try {
  //     final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
  //       email: _phoneNumberController.text.trim(), // Use phone number as email for simplicity
  //       password: _passwordController.text,
  //     );
  //
  //     // Store additional customer data in Firestore
  //     await _firestore.collection('CustomerInfo').doc(userCredential.user!.uid).set({
  //       'fullName': _fullNameController.text,
  //       'phoneNumber': _phoneNumberController.text,
  //       // Add other user data fields as needed
  //     });
  //
  //     // Navigate to a new screen or perform other actions after successful registration
  //   } catch (e) {
  //     // Handle registration errors (e.g., email already in use)
  //     print('Registration error: $e');
  //   }
  // }
  //
  // @override
  // void dispose() {
  //   _fullNameController.dispose();
  //   _phoneNumberController.dispose();
  //   _passwordController.dispose();
  //   super.dispose();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:100.0,
              child: Stack(
                children: [
                  Positioned(
                    top: -10,
                    left: -50,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFDEABD1),
                          width: 30.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: -5,
                    child: Container(
                      width: 165.0,
                      height: 85.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFE4C8DD),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(100.0),
                          bottomLeft: Radius.circular(100.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFE4C8DD),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Akaya Telivigala',
                      color: Color(0xFFDEABD1),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      hintStyle: TextStyle(color: Colors.black12),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      hintStyle: TextStyle(color: Colors.black12),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black12),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Re-enter Password",
                      hintStyle: TextStyle(color: Colors.black12),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "OTP",
                            hintStyle: TextStyle(color: Colors.black12),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.6),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          // Add logic to send OTP to the phone number
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFDEABD1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text("Send OTP"),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Checkbox(
                        value: false, // Add logic to handle the checkbox state
                        onChanged: (value) {
                          // Add logic to handle checkbox state change
                        },
                      ),
                      Text(
                        "I agree to the terms and conditions",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Akaya Telivigala',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add logic to handle the sign-up button click
                      // _register();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFDEABD1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 13.0,
                        horizontal: 70.0,
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontFamily: 'Akaya Telivigala',
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Akaya Telivigala',
                        ),
                      ),
                      SizedBox(height: 5.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CustomerLogin(),
                            ),
                          );
                          // Add logic to navigate to the login page
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
