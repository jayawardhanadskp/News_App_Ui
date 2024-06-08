import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class signInGoogle extends StatelessWidget {
  const signInGoogle({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Text(
                  'Sign in with \nGoogle',
                  style: GoogleFonts.montserrat(
                      color: CustomColors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),

              ],
            ),

            Center(
              child: Column(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(70),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFFF2950),
                          Color(0xFFFF2950),
                        ],
                      ),
                    ),
                    child: const Stack(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/men.jpg'),
                        ),
                      ],
                    ),
                  ),

                  Text('Anderoson', style: GoogleFonts.montserrat(fontSize: 23, color: CustomColors.blue, fontWeight: FontWeight.w500),),
                  Text('@ands123', style: GoogleFonts.montserrat(fontSize: 20, color: CustomColors.lynch, ),),
                ],
              ),
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
                child:const Text('Sign In', style: TextStyle(color: Color(0xFFE9E9F0)),),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
