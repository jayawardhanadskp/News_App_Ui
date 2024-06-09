import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF607698)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.file_download_outlined, color: Color(0xFF607698),)
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.local_printshop_outlined, color: Color(0xFF607698),)
              ),
            ],
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Text(
                    'Terms & \nAgreement',
                    style: GoogleFonts.montserrat(
                        color: CustomColors.blue,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Divider(thickness: 2, color: CustomColors.gray,),
              const SizedBox(height: 10,),
              
              Text('These Terms and Conditions constitute a legally binding agreement made between you, whether personally or on behalf of an entity ("you") and Newzia ("we," "us" or "our"), concerning your access to and use of the [website name.com) website as well as any other media form, media channel, mobile website or mobile application related, linked, or otherwise connected thereto (collectively, the "Site").', style: GoogleFonts.montserrat(color: Color(0xFF607698), fontSize: 17),),
              const SizedBox(height: 10,),
              Text('You agree that by accessing the Site, you have read, understood, and agree to be bound by all of these Terms and Conditions. If you do not agree with all of these Terms and Conditions, then you are expressly prohibited from using the Site and you must discontinue use immediately.', style: GoogleFonts.montserrat(color: Color(0xFF607698), fontSize: 17)),
              const SizedBox(height: 30,),
              Text(
                  'Property Rights',
                style: GoogleFonts.montserrat(
                    color: CustomColors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20,),
        
              Text('Unless otherwise indicated, the Site is our proprietary property and all source code, databases, functionality, software, website designs, audio, video, text, photographs, and graphics on the Site (collectively, the "Content") and the trademarks, service marks, and logos contained therein (the "Marks") are owned or controlled by us or licensed to us,', style: GoogleFonts.montserrat(color: Color(0xFF607698), fontSize: 17)),
              const SizedBox(height: 10,),
              Text('and are protected by copyright and trademark laws and various other intellectual property rights and unfair', style: GoogleFonts.montserrat(color: Color(0xFF607698), fontSize: 17))
            ],
          ),
        ),
      ),
    );
  }
}
