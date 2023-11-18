// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import '../../core/colors.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      width: size.width,
      color: light,
      child: ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: size.height * 0.03),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 16,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height * 0.05,
                      width: size.width * 0.76,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.15,
                        ),
                        child: Row(
                          children: [
                            SizedBox(height: size.height * 0.01),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.11,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/profile.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: size.width * 0.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Sheena Mittal',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: size.width * 0.01),
                                    const Icon(Icons.star,
                                        color: primary, size: 17),
                                    SizedBox(width: size.width * 0.01),
                                    const Text('4  | '),
                                    SizedBox(width: size.width * 0.01),
                                    const Icon(
                                      Icons.verified,
                                      size: 17,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: size.width * 0.01),
                                    const Text('Verified User',
                                        style: TextStyle(fontSize: 12))
                                  ],
                                ),
                                //   SizedBox(height: size.height*0.05),
                                // Text('l')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    Text(
                      '“I love the Platform very much as it gives \nus great opportunities and also exposure \nto all small business owners!”',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
