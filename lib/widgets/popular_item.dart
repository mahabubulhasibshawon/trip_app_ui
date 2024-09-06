import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({super.key, required this.title, required this.rating, required this.image});

  final String title;
  final String rating;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Placeholder()));
      },
      child: Container(
        width: 200,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
          image: DecorationImage(image: AssetImage(image),
            fit: BoxFit.cover,
            opacity: 0.9,
          )
        ),
      ),
    );
  }
}
