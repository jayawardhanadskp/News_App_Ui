import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class UpdatePass extends StatelessWidget {
  const UpdatePass({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: double.infinity,

                    child: Image.asset(
                      'assets/update-pass.png',
                      fit: BoxFit.fill,
                    )),
                const SizedBox(height: 20,),


                    const SizedBox(height: 20,),
                    Text(
                      'Update \nPassword',
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
                      color: Color(0xFF607698),
                    ),
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      hintStyle: const TextStyle(color: Color(0xFF607698)),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                      filled: true,
                      fillColor: CustomColors.gray,
                      prefixIcon: const Icon(
                          Icons.remove_red_eye_outlined,
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
                      color: Color(0xFF192E52),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Repeat Password',
                      hintStyle: const TextStyle(color: Color(0xFF607698)),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                      filled: true,
                      fillColor: CustomColors.gray,
                      prefixIcon: const Icon(
                          Icons.remove_red_eye_outlined,
                        color: Color(0xFF607698),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: ElevatedButton(
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
                child:const Text('Submit', style: TextStyle(color: Color(0xFFE9E9F0)),),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
