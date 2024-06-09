import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ion/utils/colors.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ 
          SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Image
              SizedBox(
                height: 550,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
                      child: Image.asset(
                        'assets/buildingg.jpg',
                        fit: BoxFit.fill,
                        height: 550,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 30,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                    ),
                    Positioned(
                      top: 30,
                        right: 20,
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.bookmark_add_outlined, color: Colors.white),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.share, color: Colors.white),
                              onPressed: () {},
                            ),
                          ],
                        )
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 300,
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
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      color: CustomColors.lynch,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Travel',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                  Text('5 min reads',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                  Text('3 hours ago',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Text(
                                'The UNESCO World Heritage Site with sky-high house prices',
                                style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
            
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.remove_red_eye_outlined, color: CustomColors.lynch,),
                                      const SizedBox(width: 10,),
                                      Text('2,500', style: GoogleFonts.montserrat(fontSize: 16, color: CustomColors.lynch,
                                      ),)
                                    ],
                                  ),
                                  const SizedBox(width: 25,),
                                  Row(
                                    children: [
                                      Icon(Icons.thumb_up, color: CustomColors.lynch,),
                                      const SizedBox(width: 10,),
                                      Text('540', style: GoogleFonts.montserrat(fontSize: 16, color: CustomColors.lynch,
                                      ),)
                                    ],
                                  ),
                                ],
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            
                    const SizedBox(height: 10),
                    // Meta Information
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/bbc.png'),
                          radius: 25,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'BBC News',
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              '@bbc',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: CustomColors.lynch,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        
                        const Spacer(),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColors.red
                            ),
            
                            child: Row(
                              children: [
                                const Icon(Icons.add, size: 13, color: Colors.white,),
                                const SizedBox(width: 5,),
                                Text('Follow', style: GoogleFonts.montserrat(color: Colors.white),)
                              ],
                            ))
                      ],
                    ),
                    const SizedBox(height: 20),
            
                    Text(
                      'According to the annual research from UBS, the'
                          ' city of Zurich remains the most expensive place to live'
                          ' in the world for the second year running. This year it'
                          ' is joined by Geneva, which has jumped up from the fourth'
                          ' spot, largely due to the strength of the Swiss franc.'
                          '\n\nThe study compares prices of a basket of 122 goods and'
                          ' services in cities worldwide and finds that the cost of'
                          ' living in Zurich is 20% higher than in New York, and in'
                          ' Geneva, it is 16% higher.',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Image Gallery
                    Row(
                      children: [
                        Container(
                          height: 300,
                          width: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/men.jpg',
            
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/unesco.jpg',
                                  height: 145,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/visualization.jpg',
                                  height: 145,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
            
                    Text.rich(
                      TextSpan(
                      text: 'The UNESCO criteria for ranking Bath a ',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'World Heritage ',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const TextSpan(
                          text: 'Site talks of the "beauty" of the city\'s architecture, the way it sits in a green valley with hillsides visible from the centre, and the way the terraces and avenues were carefully designed to complement each other'
                        )
                      ]
                      ),
                    ),
            
                    const SizedBox(height: 30),
            
                    Wrap(
                      spacing: 10,
                      children: [
                        Container(
                          height: 32,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: CustomColors.gray,
                          ),
                          child: Center(child: Text('#travel', style: GoogleFonts.montserrat(color: CustomColors.blue, fontWeight: FontWeight.w600), )),
            
                        ),Container(
                          height: 32,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: CustomColors.gray,
                          ),
                          child: Center(child: Text('#unesco', style: GoogleFonts.montserrat(color: CustomColors.blue, fontWeight: FontWeight.w600), )),
            
                        ),Container(
                          height: 32,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: CustomColors.gray,
                          ),
                          child: Center(child: Text('#bath', style: GoogleFonts.montserrat(color: CustomColors.blue, fontWeight: FontWeight.w600), )),
            
                        ),
            
                      ],
                    ),
                    const SizedBox(height: 10,),
            
                    Wrap(
                      spacing: 10,
                      children: [
                        Container(
                          height: 32,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: CustomColors.gray,
                          ),
                          child: Center(child: Text('#abbey', style: GoogleFonts.montserrat(color: CustomColors.blue, fontWeight: FontWeight.w600), )),
            
                        ),Container(
                          height: 32,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: CustomColors.gray,
                          ),
                          child: Center(child: Text('#unitedKingdom', style: GoogleFonts.montserrat(color: CustomColors.blue, fontWeight: FontWeight.w600), )),
            
                        ),Container(
                          height: 32,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: CustomColors.gray,
                          ),
                          child: Center(child: Text('#tourism', style: GoogleFonts.montserrat(color: CustomColors.blue, fontWeight: FontWeight.w600), )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Divider(thickness: 2, color: CustomColors.gray,),
                    const SizedBox(height: 20),
                    
                    // Comments Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Comments',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        Text('view all(26)',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: CustomColors.red,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const CommentWidget(
                      username: 'Milendra',
                      comment: 'Great article!',
                      timeAgo: '2 min ago | 1 Reply',
                    ),
                    const CommentWidget(
                      username: 'Anderson',
                      comment: 'Very informative.',
                      timeAgo: '5 min ago | 3 Reply',
                    ),
                    const CommentWidget(
                      username: 'User3',
                      comment: 'Thanks for sharing!',
                      timeAgo: '5 hours ago',
                    ),
                    const SizedBox(height: 20),
            
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        style: GoogleFonts.montserrat(
                          color: const Color(0xFF192E52),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Write your comment',
                          hintStyle: const TextStyle(color: Color(0xFF607698),),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                          filled: true,
                          fillColor: CustomColors.gray,
                          suffixIcon: const Icon(
                            Icons.send_outlined,
                            color: Color(0xFF607698),
                          ),
                        ),
                      ),
                    ),
            

                  ],
                ),
              ),
            ],
                    ),
          ),
          Positioned(
            bottom: 100,
            right: 10,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: const Color(0x80E9E9F0),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.thumb_up_off_alt_outlined,
                color: CustomColors.red,
                size: 30,
              ),
            ),
          )

        ]
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final String username;
  final String comment;
  final String timeAgo;

  const CommentWidget({
    required this.username,
    required this.comment,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/men.jpg'),
            radius: 25,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  comment,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                  ),
                ),
                Text(
                  timeAgo,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: CustomColors.lynch,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
