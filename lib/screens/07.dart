import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF192E52)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Text(
                  'Verification',
                  style: GoogleFonts.montserrat(
                      color: CustomColors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20,),

                Text('Enter your verification code that we \nsent you through your email', style: GoogleFonts.montserrat(fontSize: 20, color: CustomColors.lynch, ),),

                const SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: 70,
                      decoration: BoxDecoration(
                          color: CustomColors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                            '1',
                            style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16),
                          )),
                    ),

                    Container(
                      height: 60,
                      width: 70,
                      decoration: BoxDecoration(
                          color: CustomColors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                            '3',
                            style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16),
                          )),
                    ),

                    Container(
                      height: 60,
                      width: 70,
                      decoration: BoxDecoration(
                          color: CustomColors.gray,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                            '',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                    ),
                    Container(
                      height: 60,
                      width: 70,
                      decoration: BoxDecoration(
                          color: CustomColors.gray,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                            '',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                    ),
                  ],
                )
              ],
            ),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Havent\'t received the code?', style: GoogleFonts.montserrat(color: CustomColors.blue, fontSize: 15),),
                    const SizedBox(width: 5,),
                    Text('Resend Code', style: GoogleFonts.montserrat(color: CustomColors.red, fontSize: 15, fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 20,),

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
                  child:const Text('Verify', style: TextStyle(color: Color(0xFFE9E9F0)),),

                ),
                const SizedBox(height: 40,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
