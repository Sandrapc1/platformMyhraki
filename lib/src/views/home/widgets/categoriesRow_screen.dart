// ignore_for_file: non_constant_identifier_names, file_names, unused_local_variable
// // ignore_for_file: non_constant_identifier_names, file_names

// import 'package:flutter/material.dart';
// import 'package:platform_myhrakii/core/colors.dart';

// List<Map<String, String>> Category = [
//   {
//     'imagePath': 'assets/images/tablelamp.jpg',
//     'categoryName': 'Home & \nLiving'
//   },
//   {
//     'imagePath': 'assets/images/womendesign.png',
//     'categoryName': "Women's & \n Clothing"
//   },
//   {
//     'imagePath': 'assets/images/mens.jpg',
//     'categoryName': "Men's & \n Clothing"
//   },
//   {
//     'imagePath': 'assets/images/bagsandfootwears.jpg',
//     'categoryName': 'Bags & \n Footwear'
//   },
// ];

// class CategoriesRow extends StatelessWidget {
//   const CategoriesRow({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;

//     return Container(
//       margin: const EdgeInsets.only(top: 7),
//       width: size.width,
//       height: size.height * 0.14,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         physics: const BouncingScrollPhysics(),
//         itemCount: Category.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               children: [
//                 CircleAvatar(
//                   radius: 42,
//                   backgroundImage: AssetImage(Category[index]['imagePath']!),
//                 ),
//                 SizedBox(
//                   height: size.height * 0.008,
//                 ),
//                 Flexible(
//                   child: Text(
//                     Category[index]['categoryName']!,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 12,
//                       color: primary,
//                     ),
//                     textAlign: TextAlign.center,
//                     overflow: TextOverflow.visible,
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:platform_myhrakii/core/colors.dart';
import 'package:platform_myhrakii/src/controller/homecategorie_controller.dart';
import 'package:platform_myhrakii/src/model/homescreen_model.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return FutureBuilder<List<HomeCategroyModel>>(
      future: fetchCategories(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Text('No categories available');
        } else {
          List<HomeCategroyModel> categories = snapshot.data!;
          categories.forEach((category) {
            log("Image Path: ${category.blobImageURL}");
          });

          return Container(
            margin: const EdgeInsets.only(top: 7),
            width: size.width,
            height: size.height * 0.14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 42,
                        backgroundImage:
                            NetworkImage(categories[index].blobImageURL),
                      ),
                      SizedBox(
                        height: size.height * 0.008,
                      ),
                      Flexible(
                        child: Text(
                          categories[index].categoryName,
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
      },
    );
  }
}
