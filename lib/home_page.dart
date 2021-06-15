import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static var screenHeight;
  static var screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff141921),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        Icons.grid_view,
                        color: Color(0xff4d4f52),
                        size: 20,
                      ),
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color(0xff141921),
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: AssetImage("images/profile.png"))))
                  ],
                ),
              ),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
