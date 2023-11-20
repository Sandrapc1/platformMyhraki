// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:palette_generator/palette_generator.dart';

class ShopByCategoryWidget extends StatelessWidget {
  ShopByCategoryWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  List<Map<String, String>> shopCategory = [
    {'shopbyImage': 'assets/images/homedeco.jpg', 'shopbyText': 'HOME DECOR'},
    {
      'shopbyImage': 'assets/images/organicproducts.jpeg',
      'shopbyText': 'ORGANIC BEAUTY'
    },
    {'shopbyImage': 'assets/images/nytsuite.jpeg', 'shopbyText': 'NIGHT SUITS'},
    {'shopbyImage': 'assets/images/kitchenitems.jpg', 'shopbyText': 'KITCHEN'},
    {'shopbyImage': 'assets/images/jewellery.jpg', 'shopbyText': 'JEWELLERY'},
    {'shopbyImage': 'assets/images/bedding.jpg', 'shopbyText': 'BEDDING'},
  ];

  Future<Color> getDominantColor(String imagePath) async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(
      AssetImage(imagePath),
      size: const Size(100, 100),
    );

    return paletteGenerator.dominantColor!.color;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.73,
      width: size.width,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 1,
        ),
        itemBuilder: (context, index) {
          return FutureBuilder<Color>(
            future: getDominantColor(shopCategory[index]['shopbyImage']!),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                Color blurColor = snapshot.data!;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height * 0.22,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image:
                              AssetImage(shopCategory[index]['shopbyImage']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            child: BackdropFilter(
                              filter: ui.ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: Container(
                                height: size.height * 0.05,
                                width: size.width,
                                padding: const EdgeInsets.all(8),
                                color: blurColor.withOpacity(0.3),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      shopCategory[index]['shopbyText']!,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return Container();
              }
            },
          );
        },
      ),
    );
  }
}
