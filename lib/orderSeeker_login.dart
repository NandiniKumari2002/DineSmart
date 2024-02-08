import 'package:flutter/material.dart';
import 'dart:ui'; // Import dart:ui to use ImageFilter
import 'Registration.dart';

class OrderseekerLogin extends StatelessWidget {
  const OrderseekerLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top:-10,
            left:-50,
            child: Container(
              width: 100.0, // Width of the ring
              height: 100.0, // Height of the ring
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xFFDEABD1),
                  width: 30.0, // Border width
                ),
              ),
            ),
          ),
          Positioned(
            left:0,
            top:-5,
            child: Container(
              width: 165.0, // Width of the quarter ellipse
              height: 85.0, // Height of the quarter ellipse
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
            right:0,
            top:0,
            child: Container(
              width: 60.0, // Width of the quarter ellipse
              height: 60.0, // Height of the quarter ellipse
              decoration: BoxDecoration(
                color: Color(0xFFE4C8DD),
                borderRadius: BorderRadius.only(
                  // bottomRight: Radius.circular(100.0),
                  bottomLeft: Radius.circular(100.0),
                ),
              ),
            ),
          ),
          Positioned(
            right: -55,
            bottom: -10,
            child: Image.asset(
              "assets/orderseeker.png",
              width: 380,
              height: 520,
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            child: Text(
              "Order Seeker",
              style: TextStyle(
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0,2.0),
                    blurRadius: 8.0,
                    color: Colors.grey,
                  ),
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 10.0,
                    // color: Color.fromARGB(125, 0, 0, 255),
                  ),
                ],
                fontSize: 30,
                fontWeight: FontWeight.w400,
                fontFamily: 'Akaya Telivigala',
                color: Color(0xFFDEABD1),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 20,
            right: 20,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Unique Id",
                    hintStyle: TextStyle(color: Colors.black12), // Faded hint text color
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.6), // Transparent text field
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black12), // Faded hint text color
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.6), // Transparent text field
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility), // Eye icon
                      onPressed: () {
                        // Toggle password visibility logic here
                      },
                    ),
                  ),
                ),
                SizedBox(height: 12.0),
                // Row(
                //   children: [
                //     OutlinedButton(
                //       onPressed: () {
                //         // Add your first small button logic here
                //       },
                //       style: OutlinedButton.styleFrom(
                //         backgroundColor: Color(0xFFDEABD1),
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(15.0),
                //         ),
                //         side: BorderSide(
                //           color: Color(0xFFDEABD1),
                //           width: 1.0,
                //         ),
                //       ),
                //       child: Padding(
                //         padding: const EdgeInsets.all(4.0),
                //         child: Text(
                //           "Dine-in",
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontFamily: 'Akaya Telivigala',
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     OutlinedButton(
                //       onPressed: () {
                //         // Add your second small button logic here
                //       },
                //       style: OutlinedButton.styleFrom(
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(10.0),
                //         ),
                //         side: BorderSide(
                //           color: Colors.black,
                //           width: 1.0,
                //         ),
                //       ),
                //       child: Padding(
                //         padding: const EdgeInsets.all(4.0),
                //         child: Text(
                //           "Take away",
                //           style: TextStyle(
                //             color: Colors.black,
                //             fontFamily: 'Akaya Telivigala',
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(height: 290.0), // Adjust the height as needed
                Container(
                  // width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      // Add your login button logic here
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFFDEABD1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      side: BorderSide(
                        color: Color(0xFFDEABD1),
                        width: 1.0,
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 13.0,
                          horizontal: 70.0
                      ),
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontFamily: 'Akaya Telivigala',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center, // Center text alignment
                  children: [
                    Text(
                      "Forget password?", // Your first text
                      style: TextStyle(
                        color: Colors.black45,
                        fontFamily: 'Akaya Telivigala',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text(
                          "No Account?", // Your second text
                          style: TextStyle(
                            color: Colors.black45,
                            fontFamily: 'Akaya Telivigala',
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RegistrationPage(),
                              ),
                            );
                            //navigated to another page
                          },
                          child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.blueAccent,
                              )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
