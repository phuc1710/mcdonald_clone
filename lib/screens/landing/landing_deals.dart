import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class LandingDeals extends StatefulWidget {
  const LandingDeals({
    Key? key,
  }) : super(key: key);

  @override
  State<LandingDeals> createState() => _LandingDealsState();
}

class _LandingDealsState extends State<LandingDeals> {
  final customLayoutOption = CustomLayoutOption(startIndex: 0, stateCount: 3);
  List<String> imagePaths = [];

  @override
  void initState() {
    _initImages();
    super.initState();
  }

  Future _initImages() async {
    final Map<String, dynamic> assets =
        jsonDecode(await rootBundle.loadString('AssetManifest.json'));

    setState(() {
      imagePaths =
          assets.keys.where((String key) => key.contains('landing/')).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Swiper(
        itemCount: imagePaths.length,
        itemWidth: MediaQuery.of(context).size.width,
        itemHeight: MediaQuery.of(context).size.height * 0.83,
        itemBuilder: (context, index) => FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(imagePaths[index]),
        ),
        layout: SwiperLayout.STACK,
        loop: true,
        autoplay: true,
        autoplayDelay: 5000,
      ),
    );
  }
}
