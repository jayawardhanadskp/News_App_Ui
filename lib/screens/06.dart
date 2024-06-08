import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

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
          children: [
            SizedBox(
                width: double.infinity,

                child: Image.asset(
                  'assets/forget.png',
                  fit: BoxFit.fill,
                )),

            const SizedBox(height: 20,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Text(
                  'Forget \nPassword',
                  style: GoogleFonts.montserrat(
                      color: CustomColors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20,),

            Text('Enter your email address to reset \npassword', style: GoogleFonts.montserrat(fontSize: 20, color: CustomColors.lynch, ),),

            const SizedBox(height: 20,),

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: TextFormField(
                style: GoogleFonts.montserrat(
                  color: Color(0xFF192E52),
                ),
                decoration: InputDecoration(
                  hintText: 'jonathan.anderoson@gmail.com',
                  hintStyle: const TextStyle(color: Color(0xFF192E52)),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                  filled: true,
                  fillColor: CustomColors.gray,
                  suffixIcon: const Icon(
                      Icons.email_outlined,
                    color: Color(0xFF192E52),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 120,),

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
              child:const Text('Next', style: TextStyle(color: Color(0xFFE9E9F0)),),

            ),
          ],
        ),
      ),
    );
  }
}
