import 'package:flutter/material.dart';
import '../../core/colors.dart';

class FootwearRow extends StatelessWidget {
  const FootwearRow({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          Container(
              height: size.height * 0.38,
              width: size.width * 0.49,
              decoration: BoxDecoration(
                  color: lightgrey,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.013),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: size.height * 0.23,
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/juttiwear.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        right: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_rounded,
                              color: primary,
                            )),
                      ),
                      Positioned(
                        right: 1,
                        bottom: 3,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.star,
                                  color: green,
                                )),
                            const Text(
                              '4.4 (20)',
                              style: TextStyle(color: grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text('Jooties',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500)),
                  const Text(
                    'By Creative Footwear',
                    style: TextStyle(color: lettercolor, fontSize: 12),
                  ),
                  const Text('₹900',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      )),
                      SizedBox(height: size.height*0.02),
                  const Text("2 products in stock",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFF868686),
                      ))
                ],
              )),
              SizedBox(width: size.width*0.02),
               Container(
              height: size.height * 0.38,
              width: size.width * 0.49,
              decoration: BoxDecoration(
                  color: lightgrey,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.013),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: size.height * 0.23,
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/juttiwear.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        right: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_rounded,
                              color: primary,
                            )),
                      ),
                      Positioned(
                        right: 1,
                        bottom: 3,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.star,
                                  color: green,
                                )),
                            const Text(
                              '4.4 (20)',
                              style: TextStyle(color: grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text('Jooties',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500)),
                  const Text(
                    'By Creative Footwear',
                    style: TextStyle(color: lettercolor, fontSize: 12),
                  ),
                  const Text('₹900',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      )),
                      SizedBox(height: size.height*0.02),
                  const Text("2 products in stock",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFF868686),
                      ))
                ],
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_rounded)),
        ],
      ),
    );
  }
}