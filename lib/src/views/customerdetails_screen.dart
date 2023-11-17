// import 'package:flutter/material.dart';
// import '../../core/colors.dart';

// class CustomerDetails extends StatelessWidget {
//   const CustomerDetails({
//     super.key,
//     required this.size,
//   });

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: size.height * 0.2,
//       width: size.width,
//       color: pink,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return  Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               // crossAxisAlignment: CrossAxisAlignment.center,
//               // mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: size.height*0.15,
//                   width: size.width,
//                   color: green,
//                   child: Row(
//                     children: [
//                       Container(
//                         alignment: Alignment.topCenter,
//                         height: size.height * 0.05,
//                         width: size.width * 0.08,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(45),
//                           image: DecorationImage(image: AssetImage('assets/images/profile.jpg'),fit: BoxFit.cover)
//                         ),
                        
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           );
//         },
       
//       ),
//     );
//   }
// }

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../core/colors.dart';

class CustomerDetails extends StatelessWidget {
  CustomerDetails({
    super.key,
    required this.size,
  });

  final Size size;
  List <Map<String , String>>popularItems = [
    {'popularImage':'assets/image/profile.jpg','populatText':'Sheena Mittal'},
   { 'popularImage':'assets/images/profile.jpg','populatText':'Sheena Mittal'}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      width: size.width,
      color: green,
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.2,
                  width: size.width * 0.54,
                  decoration: BoxDecoration(
                      color: viewall, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.01),
                      Container(
                        height: size.height * 0.13,
                        width: size.width * 0.5,
                        decoration: BoxDecoration(
                            // color: pink,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(popularItems[index]['popularImage']!),
                                fit: BoxFit.cover)),
                      ),
                       Text(
                       popularItems[index]['populatText']!,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      // const Text(
                      //   '“I love the Platform very much as it gives\n us great opportunities and also exposure to all small business owners!”',
                      //   style:
                      //       TextStyle(color: grey, fontWeight: FontWeight.w400),
                      // ),
                    ],
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
