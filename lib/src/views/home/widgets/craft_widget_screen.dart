import 'package:flutter/material.dart';
import '../../../../core/colors.dart';

class CraftWidget extends StatelessWidget {
  CraftWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  final List<Map<String, String>> assetImages = [
    {
      'assetImages': 'assets/images/Rectangle 162262.png',
      'craftText': 'BLOCK PRINTED\nSCARFS',
      'subText': 'Block printing is the\nprocess of printing ....'
    },
    {
      'assetImages': 'assets/images/Rectangle 162261.png',
      'craftText': 'MIRROR WORK',
      'subText': 'Mirror-work,is a\ntype of embroidery which...'
    },
    {
      'assetImages': 'assets/images/Rectangle 162261 (1).png',
      'craftText': 'KOLHAPURI\nCHAPPALS',
      'subText': 'Kolhapuri chappals are \nIndian decorati...'
    },
    {
      'assetImages': 'assets/images/Rectangle 162262.png',
      'craftText': 'BLOCK PRINTED\nSCARFS',
      'subText': 'Block printing is the\nprocess of printing ....'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: size.height * 0.5,
        height: size.height * 0.68,
        width: size.width,
        color: light,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.03),
            const Text(
              'TALE OF CRAFT',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Expanded(
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 7,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.centerLeft,
                        height: size.height,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    assetImages[index]['assetImages']!))),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: size.width * 0.07, top: size.height * 0.09),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                assetImages[index]['craftText']!,
                                style: const TextStyle(
                                    color: white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                assetImages[index]['subText']!,
                                style: const TextStyle(
                                    color: white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
            Container(
              height: size.height * 0.003,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      colors: [primary, grey, grey, grey, grey],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                  color: primary),
            ),
            SizedBox(height: size.height * 0.02),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'VIEW ALL',
                  style: TextStyle(
                      color: primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                decorationColor: primaryy,
                decorationThickness: 1,),
                )),
          ],
        ));
  }
}
