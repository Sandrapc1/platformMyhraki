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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 16,
            )),
        Jootiesproducts(size: size),
        SizedBox(width: size.width * 0.02),
        Jootiesproducts(size: size),
      ],
    );
  }
}

class Jootiesproducts extends StatelessWidget {
  const Jootiesproducts({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * 0.43,
        width: size.width * 0.41,
        decoration: BoxDecoration(
            color: lightgrey, borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.013),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * 0.23,
                  width: size.width * 0.37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/juttiwear.jpg'),
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
                            size: 16,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Jooties',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
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
                SizedBox(height: size.height * 0.01),
                const Text("2 products in stock",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Color(0xFF868686),
                    )),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Container(
                height: size.height * 0.034,
                width: size.width * 0.32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(colors: [primary, primaryy]),
                  color: primary,
                ),
                child: InkWell(
                  onTap: () async {},
                  child: const Center(
                    child: Text(
                      'VIEW PRODUCT',
                      style: TextStyle(
                          color: white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )),
          ],
        ));
  }
}
