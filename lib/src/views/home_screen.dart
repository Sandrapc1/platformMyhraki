import 'package:flutter/material.dart';
import 'package:platform_myhrakii/core/colors.dart';
import 'package:platform_myhrakii/src/views/CategoriesRow.dart';
import 'package:platform_myhrakii/src/views/bottamnavigation.dart';
import 'package:platform_myhrakii/src/views/carousel%20slider.dart';
import 'package:platform_myhrakii/src/views/cart_screen.dart';
import 'package:platform_myhrakii/src/views/favorite_scree.dart';
import 'footwearrow.dart';

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
              color:primary,
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
              size: 29,
              color: primary,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 47,
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
            const CategoriesRow(),
            SizedBox(height: size.height * 0.02),
            const CarouselSliderDemo(),
            const SizedBox(height: 10),
            const Text(
              'NEW ARRIVALS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              children: [
                FootwearRow(size: size),
              ],
            ),
            const Text('adsfg'),
            const Text('adsfg'),
            const Text('adsfg'),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
