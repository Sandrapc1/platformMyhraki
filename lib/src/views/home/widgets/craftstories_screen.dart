// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../../../../core/colors.dart';

class CraftStoriesScreen extends StatelessWidget {
  CraftStoriesScreen({
    Key? key,
  }) : super(key: key);

  // List<Map<String, String>> popularItems = [
  //   {
  //     'popularImage': 'assets/images/work.jpg',
  //     'populatText': 'I MADE YOUR CLOTHE'
  //   },
  //   {
  //     'popularImage': 'assets/images/downloads.jpgg',
  //     'populatText': 'I MADE YOUR QUIL'
  //   }
  // ];

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
                CraftStorieWidget(size: size),
                SizedBox(width: size.width * 0.03),
                CraftStorieWidget(size: size),
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

class CraftStorieWidget extends StatelessWidget {
  const CraftStorieWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: size.height * 0.25,
          width: size.width * 0.54,
          decoration: BoxDecoration(
            color: lightgrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                height: size.height * 0.13,
                width: size.width * 0.54,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/work.jpg'
                        // popularItems[index]['popularImage']!,
                        ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              const Text(
                'I MADE YOUR CLOTHE',
                // popularItems[index]['populatText']!,
                style: TextStyle(
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
    );
  }
}
