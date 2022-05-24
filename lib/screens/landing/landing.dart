import 'package:flutter/material.dart';

import 'landing_deals.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Column(
          children: [
            const LandingDeals(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.17,
              color: Theme.of(context).backgroundColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Gọi Món Tại Đây',
                            style: Theme.of(context).textTheme.bodyText2),
                        Text('Order Here',
                            style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        //TODO: Navigate to next screen
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("TODO: Navigate to next screen"))),
      ),
    );
  }
}
