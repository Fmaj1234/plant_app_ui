import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_ui/categories.dart';
import 'package:plant_app_ui/product_screen.dart';
import 'colors.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteClr,
      // backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Find your\nfavorite plants",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12,
                      ),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ).animate().fade(duration: const Duration(milliseconds: 800)),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                height: 110,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: colors.grn2Clr,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        Text(
                          "30% OFF",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                            .animate(
                              delay: const Duration(milliseconds: 600),
                            )
                            .fade(
                              duration: const Duration(milliseconds: 600),
                            )
                            .slideX(),
                        Text(
                          "02 - 23 July",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        )
                            .animate(
                              delay: const Duration(milliseconds: 800),
                            )
                            .fade(
                              duration: const Duration(milliseconds: 800),
                            )
                            .slideX(),
                        Spacer(),
                      ],
                    ),
                    Image.asset(
                      "images/Plant.png",
                    )
                        .animate()
                        .fade(duration: const Duration(milliseconds: 800)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: Categories.categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: index == 1 ? Colors.black : Colors.black26,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        Categories.categories[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: index == 1 ? Colors.black : Colors.black26,
                        ),
                      ),
                    ),
                  )
                      .animate()
                      .fadeIn(
                        delay: Duration(milliseconds: 200 * index),
                      )
                      .scale();
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: 15,
                            top: 5,
                            left: 5,
                            bottom: 5,
                          ),
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: colors.gryClr,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 280,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductScreen(),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                          "images/Plant${index + 1}.png",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 140,
                                        top: 10,
                                      ),
                                      child: Text(
                                        "\$40",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: colors.blClr,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      "Add To Cart",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: colors.blClr,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.blClr,
                                    ),
                                    child: Icon(
                                      Icons.favorite_outline,
                                      color: Colors.white38,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                        .animate()
                        .fadeIn(
                          delay: Duration(milliseconds: 300 * index),
                        )
                        .slideX();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: colors.gryClr,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                CupertinoIcons.home,
                color: Colors.black54,
              ),
              Icon(
                Icons.favorite_outline,
                color: Colors.black54,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colors.blClr,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Icon(
                    CupertinoIcons.qrcode,
                    color: Colors.white54,
                  )),
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black54,
              ),
              Icon(
                CupertinoIcons.person,
                color: Colors.black54,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
