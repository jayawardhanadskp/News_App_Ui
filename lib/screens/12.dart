import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ion/utils/colors.dart';

class NewPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF192E52)),
          onPressed: () {

          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: const AssetImage('assets/airport.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.image_outlined, color: Colors.white,),
                        const SizedBox(height: 10,),
                        Text(
                          'change image cover',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "The world's most spectacular airport",
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: CustomColors.lynch,
                    fontWeight: FontWeight.w600
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: CustomColors.gray,
                ),
              ),
              const SizedBox(height: 20),
              Container(

                decoration: BoxDecoration(
                  color: CustomColors.gray,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.format_italic, color: Colors.grey,),
                          SizedBox(width: 5,),
                          Icon(Icons.color_lens_outlined, color: Colors.grey,),
                          SizedBox(width: 8,),
                          Icon(Icons.menu_book, color: Colors.grey,),
                          SizedBox(width: 8,),
                          Icon(Icons.picture_as_pdf, color: Colors.grey,),
                          SizedBox(width: 8,),
                          Icon(Icons.emoji_emotions_outlined, color: Colors.grey,),
                          SizedBox(width: 8,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        maxLines: 6,
                        decoration: InputDecoration(
                          hintText: 'According to the annual research from UBS, the'
                              ' city of Zurich remains the most expensive place to live'
                              ' in the world for the second year running. '
                              '\n\n'
                              ' This year it is joined by Geneva, which has jumped up from the fourth'
                              ' spot, largely due to the strength of the Swiss franc.'
                              ,
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: CustomColors.lynch,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CustomColors.gray,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Travel',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: CustomColors.lynch,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: CustomColors.lynch),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Container(
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 0),
                      blurRadius: 10,
                      spreadRadius: -5,
                    ),
                  ],
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 32,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CustomColors.gray,
                      ),
                      child: Center(child: Text('#travel', style: GoogleFonts.montserrat(color: CustomColors.blue, fontWeight: FontWeight.w600), )),
                    ),
                    const SizedBox(width: 7,),
                    Container(
                      height: 32,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CustomColors.gray,
                      ),
                      child: Center(child: Text('#airport', style: GoogleFonts.montserrat(color: CustomColors.blue, fontWeight: FontWeight.w600), )),

                    ),
                    const SizedBox(width: 7,),
                    Container(
                      height: 32,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CustomColors.gray,
                      ),
                      child: Center(child: Text('#spectacular', style: GoogleFonts.montserrat(color: CustomColors.blue, fontWeight: FontWeight.w600), )),

                    ),
                    const SizedBox(width: 7,),
                    Container(
                      height: 32,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CustomColors.gray,
                      ),
                      child: Center(child: Text('#pol', style: GoogleFonts.montserrat(color: CustomColors.blue, fontWeight: FontWeight.w600), )),

                    ),

                  ],
                ),
              ),

              const SizedBox(height: 40),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: CustomColors.gray,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(Icons.image_outlined, color: Color(0xFF192E52)),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        fixedSize: const Size(double.infinity, 60)
                      ),
                      child: Text(
                        'Publish',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
