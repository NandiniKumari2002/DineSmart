import 'package:flutter/material.dart';
import 'Customer_Login.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0x33945a85), Color(0xffdeabd1)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 40,
              top: 180,
              child: RichText(
                text: TextSpan(
                style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Aclonica',
                ),
                  children: [
                    TextSpan(
                      text: "Welcome to\n",
                    ),
                    TextSpan(
                      text: "DineSmart",
                      style: TextStyle(
                        color: Color(0xFFBE80AF),
                        fontFamily: 'Aclonica',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 40,
              bottom: 450, // Adjust the top position as needed
              child: Text(
                "Your Table-Your Tech-Your Taste",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Akaya Telivigala',
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 70,
              child: Image.asset(
                "assets/chilli_chef.png", // Replace with your image path
                width: 111,
                height: 123,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 320,
              child: Image.asset(
                "assets/donats.png", // Replace with your image path
                width: 152,
                height: 145,
              ),
            ),
            Positioned(
              left: 21,
              bottom: 40,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CustomerLogin(),
                    ),
                  );
                  // Add your button's onPressed logic here
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor:  Color(0x40FFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Adjust the corner radius as needed
                  ),
                  side: BorderSide(
                    color: Colors.white, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),

                  child: Text(
                    "Start with email and phone",
                    style: TextStyle(
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}

