import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'popular_item.dart';

class BuildTabContent extends StatelessWidget {
  const BuildTabContent({super.key, required this.tab});

  final String tab;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Text(
              "Popular",
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF232323),
              ),
            ),
            Text(
              "See all",
              style: GoogleFonts.montserrat(
                color: Color(0xFF176FF2),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],),
          SizedBox(height: 12,),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PopularItem(title: "Alley Palac", rating: "4.1", image: "assets/images/Alley Palace.png"),
                const SizedBox(width: 16),
                PopularItem(title: "Alley Palac", rating: "4.1", image: "assets/images/CoeurdesAlpes.png"),
              ],
            ),
          )
        ],
      ),
    ),);
  }
}
