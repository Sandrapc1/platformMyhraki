import 'package:flutter/material.dart';
import 'package:platform_myhrakii/core/colors.dart';
import 'package:platform_myhrakii/src/views/categoriesRow_screen.dart';
import 'package:platform_myhrakii/src/views/bottamnavigation.dart';
import 'package:platform_myhrakii/src/views/carouselslider_screen.dart';
import 'package:platform_myhrakii/src/views/cart_screen.dart';
import 'package:platform_myhrakii/src/views/craftstories_screen.dart';
import 'package:platform_myhrakii/src/views/favorite_scree.dart';
import 'package:platform_myhrakii/src/views/popularides_screen.dart';
import 'craft_widget_screen.dart';
import 'customerdetails_screen.dart';
import 'footwearrow_screen.dart';
import 'shopbycategory_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: size.width * 0.001),
          child: Image.asset('assets/images/Myhraki_Logo.png',
              height: size.height * 0.036),
        ),
        iconTheme: const IconThemeData(color: primary),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(),
                  ));
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 28,
              color: primary,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoriteScreen(),
                  ));
            },
            icon: const Icon(
              Icons.favorite_border_rounded,
              size: 28,
              color: primary,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoriteScreen(),
                  ));
            },
            icon: const Icon(
              Icons.notifications_none_rounded,
              size: 28,
              color: primary,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: size.height * 0.052,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: grey)
                      // color: Colors.grey[200],
                      ),
                  margin: const EdgeInsets.all(16.0),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: primaryy),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search by product',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: primary,
                  radius: 18,
                  child: Icon(
                    Icons.keyboard_voice_outlined,
                    color: white,
                    size: 28,
                  ),
                )
              ],
            ),
            const CategoriesRow(),
            SizedBox(height: size.height * 0.03),
            const CarouselSliderDemo(),
            const SizedBox(height: 10),
            const Text(
              'NEW ARRIVALS',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
            SizedBox(height: size.height * 0.03),
            const FootwearRow(),
            SizedBox(height: size.height * 0.03),
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
                    decorationThickness: 1,
                  ),
                )),
            SizedBox(height: size.height * 0.03),
            CraftWidget(size: size),
            SizedBox(height: size.height * 0.03),
            const Text('POPULAR  GIFT  IDEAS',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
            PopularIdeasScreen(size: size),
            SizedBox(height: size.height * 0.03),
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
                    decorationThickness: 1,
                  ),
                )),
            SizedBox(height: size.height * 0.03),
            const Text('CUSTOMER REVIEWS',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
            SizedBox(height: size.height * 0.03),
            CustomerDetails(size: size),
            SizedBox(height: size.height * 0.03),
            const Text('SHOP BY CATEGORY',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
            SizedBox(height: size.height * 0.03),
            ShopByCategoryWidget(size: size),
            SizedBox(height: size.height * 0.03),
            Text(
              'LOAD MORE',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationColor: primaryy,
                  decorationThickness: 1,
                  foreground: Paint()
                    ..shader = const LinearGradient(colors: [primary, primaryy])
                        .createShader(
                            const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0))),
            ),
            SizedBox(height: size.height * 0.03),
            const Text('MOST VIEWED',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
            SizedBox(height: size.height * 0.03),
            const FootwearRow(),
            SizedBox(height: size.height * 0.03),
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
                    decorationThickness: 1,
                  ),
                )),
            SizedBox(height: size.height * 0.03),
            const Text('CRAFT STORIES',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
            SizedBox(height: size.height * 0.03),
            CraftStoriesScreen()
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
