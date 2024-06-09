import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ion/utils/colors.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF192E52)),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              '21 News',
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: Colors.black,

              ),
            ),
            const SizedBox(height: 20,),

            TextField(
              decoration: InputDecoration(
                hintText: 'Search saved news',
                hintStyle: GoogleFonts.montserrat(color: CustomColors.lynch),
                prefixIcon: const Icon(Icons.search, color: Color(0xFF192E52)),
                suffixIcon: const Icon(Icons.filter_list, color: Color(0xFF192E52)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: CustomColors.gray,
              ),
            ),
            const SizedBox(height: 25,),


            Expanded(
              child: ListView(
                children: const [
                  NewsCard(
                    category: 'Travel',
                    time: '5 min reads',
                    title: 'The UNESCO World Heritage Site with sky-high house prices',
                    imageUrl: 'assets/building.jpg',
                    hoursAgo: '3 hours ago',
                    iconColor: Colors.red,
                    iconType: Icons.bookmark_add,
                  ),
                  NewsCard(
                    category: 'Future',
                    time: '5 min reads',
                    title: 'Creative Resilience - Virtual Exhibition',
                    imageUrl: 'assets/visualization.jpg',
                    hoursAgo: '12 hours ago',
                    iconColor: Colors.grey,
                    iconType: Icons.bookmark_add_outlined,
                  ),
                  NewsCard(
                    category: 'Pandemic',
                    time: '8 min reads',
                    title: 'Words of women in mathematics time of corona',
                    imageUrl: 'assets/women.jpg',
                    hoursAgo: '23 hours ago',
                    iconColor: Colors.grey,
                    iconType: Icons.bookmark_add_outlined,
                  ),
                  NewsCard(
                    category: 'Global',
                    time: '9 min reads',
                    title: 'UNESCO joins pledges to strengthen global holocaust',
                    imageUrl: 'assets/unesco.jpg',
                    hoursAgo: '2 days ago',
                    iconColor: Colors.grey,
                    iconType: Icons.bookmark_add_outlined,
                  ),NewsCard(
                    category: 'Travel',
                    time: '5 min reads',
                    title: 'The UNESCO World Heritage Site with sky-high house prices',
                    imageUrl: 'assets/building.jpg',
                    hoursAgo: '3 hours ago',
                    iconColor: Colors.red,
                    iconType: Icons.bookmark_add,
                  ),
                  NewsCard(
                    category: 'Future',
                    time: '5 min reads',
                    title: 'Creative Resilience - Virtual Exhibition',
                    imageUrl: 'assets/visualization.jpg',
                    hoursAgo: '12 hours ago',
                    iconColor: Colors.grey,
                    iconType: Icons.bookmark_add_outlined,
                  ),
                  NewsCard(
                    category: 'Pandemic',
                    time: '8 min reads',
                    title: 'Words of women in mathematics time of corona',
                    imageUrl: 'assets/women.jpg',
                    hoursAgo: '23 hours ago',
                    iconColor: Colors.grey,
                    iconType: Icons.bookmark_add_outlined,
                  ),
                  NewsCard(
                    category: 'Global',
                    time: '9 min reads',
                    title: 'UNESCO joins pledges to strengthen global holocaust',
                    imageUrl: 'assets/unesco.jpg',
                    hoursAgo: '2 days ago',
                    iconColor: Colors.grey,
                    iconType: Icons.bookmark_add_outlined,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String category;
  final String time;
  final String title;
  final String imageUrl;
  final String hoursAgo;
  final MaterialColor iconColor;
  final IconData iconType;

  const NewsCard({
    required this.category,
    required this.time,
    required this.title,
    required this.imageUrl,
    required this.hoursAgo,
    required this.iconColor, required this.iconType

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(23.0),
              child: Image.asset(
                imageUrl,
                height: 110,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '$category ',
                            style: GoogleFonts.montserrat(
                              fontSize: 13,
                              color: CustomColors.lynch,
                            ),
                          ),
                          Text(
                            ' $time',
                            style: GoogleFonts.montserrat(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(iconType, color: iconColor, size: 18,),
                        onPressed: () {

                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 0),
                  Text(
                    title,
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    hoursAgo,
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
      ),
    );
  }
}
