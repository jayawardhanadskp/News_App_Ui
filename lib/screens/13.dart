import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: CustomColors.lynch),
          onPressed: () {

          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/men.jpg'),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Anderoson', style: GoogleFonts.montserrat(fontSize: 20, color: CustomColors.blue, fontWeight: FontWeight.w500),),
                      Text('@ands123', style: GoogleFonts.montserrat(fontSize: 17, color: CustomColors.lynch, ),),

                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  _options(Icons.person_2_outlined, 'Edit Profile'),
                  _options(Icons.settings_outlined, 'General'),
                  _options(Icons.notifications_outlined, 'Notification'),
                  _options(Icons.security_outlined, 'Security'),
                  _options(Icons.lock_outline, 'Privacy'),
                  _options(Icons.help_outline, 'FAQ'),
                  _options(Icons.logout, 'Logout'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _options(IconData icon, String title) {
    return SizedBox(
      height: 70,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: CustomColors.gray,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: CustomColors.lynch, size: 30),
            const SizedBox(height: 10),
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: CustomColors.lynch,
              ),
            ),
          ],
        ),
      ),
    );
  }
}