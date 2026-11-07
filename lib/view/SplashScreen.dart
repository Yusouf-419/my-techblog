import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techblog/view/mainScreen.dart';
import 'package:techblog/my-colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => MainScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: Image(image: Assets.images.logo.provider(), height: 55),
            ),
            SizedBox(height: 25),
            SpinKitWave(size: 32, color: SolidColors().primeryColor),
          ],
        ),
      ),
    );
  }
}
