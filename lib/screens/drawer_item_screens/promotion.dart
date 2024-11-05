import 'package:flutter/material.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              children: [

                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(

                  ),
                ),

              ],

            ),
          ],
        ),
      ),
    );
  }
}
