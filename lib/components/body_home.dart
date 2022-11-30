import 'package:flutter/material.dart';

import '../screens/detail_screen.dart';
import '../screens/furthur_detail.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 10, left: 10),
      child: GridView.builder(
        itemCount: images.length,
       
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const DetailScreen())));
              },
              child: SizedBox(
                height: 280,
                width: 240,
                child: Image.asset(fit: BoxFit.cover, images[index]),
              ),
            );
          })),
    ));
  }
}
