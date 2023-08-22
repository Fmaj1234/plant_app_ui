import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteClr,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black12,
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 18,
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
                      Icons.favorite_outline,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              "images/Plant1.png",
              height: MediaQuery.of(context).size.height / 2,
            )
                .animate()
                .slideY(
                    begin: 10,
                    duration: const Duration(
                      milliseconds: 800,
                    ),
                    curve: Curves.easeOut)
                .fadeIn(
                  begin: 0.1,
                  delay: const Duration(milliseconds: 600),
                )
                .moveX(end: 0),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Plant Name",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: colors.grnClr,
                      ),
                      Text(
                        "4.4",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "(5451 Reviews)",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ).animate().fade(duration: const Duration(milliseconds: 800)),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            )
                .animate(
                  delay: const Duration(milliseconds: 600),
                )
                .fade(
                  duration: const Duration(milliseconds: 600),
                ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Size",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Medium",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                      .animate()
                      .fade(duration: const Duration(milliseconds: 1200))
                      .slideX(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Plant",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                      .animate()
                      .fade(duration: const Duration(milliseconds: 800))
                      .slideX(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '12.8"',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                      .animate()
                      .fade(duration: const Duration(milliseconds: 600))
                      .slideX(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Humidity",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "82%",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                      .animate()
                      .fade(duration: const Duration(milliseconds: 400))
                      .slideX(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "\$35.56",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: colors.grnClr,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontSize: 18,
                      color: colors.whiteClr,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ).animate(delay: const Duration(milliseconds: 500)).slideY(
            begin: 1,
            duration: const Duration(
              milliseconds: 600,
            ),
            curve: Curves.fastLinearToSlowEaseIn,
          ),
    );
  }
}
