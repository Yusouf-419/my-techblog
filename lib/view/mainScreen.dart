import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/my-colors.dart';
import 'package:techblog/view/homeScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var themeData = Theme.of(context).textTheme;
    double bodyMargin = size.width / 10;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: SolidColors().scafolBg,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.menu),
              
              Image(
                image: Assets.images.logo.provider(),
                
                height: size.height / 13.6,
              ),
          

              Icon(Icons.search),
            ],
          ),
        ),

        body: Homescreen(themeData: themeData, size: size, bodyMargin: bodyMargin)
      ),
    );
  }
}
