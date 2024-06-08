import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ion/utils/colors.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
                  fontSize: 18,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'assets/building.jpg',
                      fit: BoxFit.fill,
                      height: 400,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF192E52).withOpacity(0.7),
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                      child:
                         Padding(
                           padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Text(
                                'Sign in \noptions.',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                               ),

                               const SizedBox(height: 20,)
                             ],
                           ),
                         ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
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
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email_outlined, color: Color(0xFFE9E9F0),),
                    SizedBox(width: 5,),
                    Text('Continue with email', style: TextStyle(color: Color(0xFFE9E9F0)),),
                  ],
                )
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.gray,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  textStyle: GoogleFonts.montserrat(
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(opacity: 0.7, child: Image.asset('assets/google.jpg', height: 25,)),
                    const SizedBox(width: 5,),
                    const Text('Sign In with Google', style: TextStyle(color: Color(0xFF192E52)),),
                  ],
                )
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.gray,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  textStyle: GoogleFonts.montserrat(
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(opacity: 0.7, child: Image.asset('assets/apple.jpg', height: 25,)),
                    const SizedBox(width: 5,),
                    const Text('Sign In with Apple Id', style: TextStyle(color: Color(0xFF192E52)),),
                  ],
                )
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account? ', style: GoogleFonts.montserrat(color: const Color(0xFF607698), fontSize: 17, fontWeight: FontWeight.w400),),
                Text('Sign Up', style: GoogleFonts.montserrat(color: const Color(0xFFFF2950), fontSize: 17, fontWeight: FontWeight.w600),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
