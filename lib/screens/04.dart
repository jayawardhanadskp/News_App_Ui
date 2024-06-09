import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF607698)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              'skip',
              style: GoogleFonts.montserrat(
                  color: const Color(0xFF607698),
                  fontSize: 18
              ),
            ),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 35,
                  width: 100,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.montserrat(color: const Color(0xFF192E52), fontSize: 16),
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      color: CustomColors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

                Text(
                  'Create \nan account',
                  style: GoogleFonts.montserrat(
                      color: CustomColors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),


            const SizedBox(height: 30,),

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: TextFormField(
                style: GoogleFonts.montserrat(
                  color: const Color(0xFF192E52),
                ),
                decoration: InputDecoration(
                  hintText: 'jonathan',
                  hintStyle: GoogleFonts.montserrat(color: const Color(0xFF607698)),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                  filled: true,
                  fillColor: CustomColors.gray,
                  suffixIcon: const Icon(
                      Icons.person_pin,
                    color: Color(0xFF607698),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: TextFormField(
                style: GoogleFonts.montserrat(
                  color: const Color(0xFF192E52),
                ),
                decoration: InputDecoration(
                  hintText: 'jonathan.anderoson@gmail.com',
                  hintStyle: const TextStyle(color: Color(0xFF607698)),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                  filled: true,
                  fillColor: CustomColors.gray,
                  suffixIcon: const Icon(
                      Icons.email_outlined,
                    color: Color(0xFF607698),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: TextFormField(
                style: GoogleFonts.montserrat(
                  color: const Color(0xFF192E52),
                ),
                decoration: InputDecoration(
                  hintText: '. . . . . . . . . . .',
                  hintStyle: const TextStyle(color: Color(0xFF607698)),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                  filled: true,
                  fillColor: CustomColors.gray,
                  suffixIcon: const Icon(
                      Icons.remove_red_eye_outlined,
                    color: Color(0xFF607698),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),

            Row(
              children: [
                Container(color: CustomColors.gray, height: 10, width: 10,),
                const SizedBox(width: 10,),
                Text('I have read', style: GoogleFonts.montserrat(color: CustomColors.blue, fontSize: 15),),
                const SizedBox(width: 5,),
                Text('Terms & Agreement', style: GoogleFonts.montserrat(color: CustomColors.red, fontSize: 15, fontWeight: FontWeight.bold),),
              ],
            ),

            const SizedBox(height: 60,),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  textStyle: GoogleFonts.montserrat(
                    fontSize: 18,
                  ),
                  fixedSize: const Size(400, 70)
              ),
              child: Text('Sign Up', style: GoogleFonts.montserrat(color: const Color(0xFFE9E9F0)),),

            ),
            const SizedBox(height: 20,),

            Center(child: Text('Or sign up with',  style: GoogleFonts.montserrat(color: CustomColors.blue, fontSize: 15),)),

            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.gray,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: const EdgeInsets.all(20.0),
                        textStyle: const TextStyle(
                          fontSize: 18,
                        ),
                        fixedSize: const Size(175, 60)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(opacity: 0.7, child: Image.asset('assets/google.jpg', height: 25,)),
                        const SizedBox(width: 5,),
                         Text('Google', style: GoogleFonts.montserrat(color: const Color(0xFF192E52)),),
                      ],
                    )
                ),

                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.gray,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: const EdgeInsets.all(20.0),
                        textStyle: const TextStyle(
                          fontSize: 18,
                        ),
                        fixedSize: const Size(175, 60)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(opacity: 0.7, child: Image.asset('assets/apple.jpg', height: 25,)),
                        const SizedBox(width: 5,),
                        Text('Apple Id', style: GoogleFonts.montserrat(color: const Color(0xFF192E52)),),
                      ],
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
