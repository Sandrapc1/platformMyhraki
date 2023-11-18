import 'package:flutter/material.dart';
import '../../core/colors.dart';

class CraftStoriesScreen extends StatelessWidget {
  CraftStoriesScreen({
    Key? key,
  }) : super(key: key);

  List<Map<String, String>> popularItems = [
    {
      'popularImage': 'assets/images/jutiwomen.jpg',
      'populatText': 'I MADE YOUR CLOTHE'
    },
    {
      'popularImage': 'assets/images/downloads.jpgg',
      'populatText': 'I MADE YOUR QUIL'
    }
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25,
      width: size.width,
      child: ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 16,
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: size.height * 0.25,
                      width: size.width * 0.54,
                      decoration: BoxDecoration(
                        color: viewall,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.13,
                            width: size.width * 0.54,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  popularItems[index]['popularImage']!,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.04),
                          Text(
                            popularItems[index]['populatText']!,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            'Read My Story',
                            style: TextStyle(
                              color: grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage(
                        'assets/images/downloads.jpg',
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
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
