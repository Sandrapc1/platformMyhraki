// https://github.com/Sandrapc1/platformMyhraki.git
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:platform_myhrakii/core/colors.dart';

List<Map<String, String>> Category = [
  {
    'imagePath': 'assets/images/tablelamp.jpg',
    'categoryName': 'Home & \nLiving'
  },
  {
    'imagePath': 'assets/images/womendesign.png',
    'categoryName': "Women's & \n Clothing"
  },
  {
    'imagePath': 'assets/images/mens.jpg',
    'categoryName': "Men's & \n Clothing"
  },
  {
    'imagePath': 'assets/images/jutti.jpg',
    'categoryName': 'Bags & \n Footwear'
  },
];

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(top: 7),
      width: size.width,
      height: size.height * 0.14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: Category.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 39,
                  backgroundImage: AssetImage(Category[index]['imagePath']!),
                ),
                SizedBox(
                  height: size.height * 0.008,
                ),
                Flexible(
                  child: Text(
                    Category[index]['categoryName']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: primary,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible, 
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
