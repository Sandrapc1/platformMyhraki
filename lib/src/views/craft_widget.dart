// import 'package:flutter/material.dart';
// import '../../core/colors.dart';

// class CraftWidget extends StatelessWidget {
//   const CraftWidget({
//     Key? key,
//     required this.size,
//   }) : super(key: key);

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: size.height * 0.5,
//       width: size.width,
//       color: light,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center, 
//         children: [
//           SizedBox(height: size.height * 0.03),
//           const Text(
//             'TALE OF CRAFT',
//             style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
//           ),
//           Expanded(
//             child: Center(
//               child: GridView.builder(
//                 physics: const NeverScrollableScrollPhysics(),
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 12,
//                   mainAxisSpacing: 12,
//                 ),
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     height: size.height * 0.02,
//                     width: size.width * 0.01,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       color: green,
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import '../../core/colors.dart';

class CraftWidget extends StatelessWidget {
   CraftWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  final List<String> assetImages = ['assets/images/Rectangle 162262.png', 'assets/images/Rectangle 162261.png', 'assets/images/Rectangle 162261 (1).png', 'assets/images/Rectangle 162262.png'];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: size.height * 0.5,
      height: 500,
      width: size.width,
      color: light,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          SizedBox(height: size.height * 0.03),
          const Text(
            'TALE OF CRAFT',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          Expanded(
            child: Center(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Image.asset(
                    assetImages[index], 
                    height: size.height * 0.02,
                    width: size.width * 0.01,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

