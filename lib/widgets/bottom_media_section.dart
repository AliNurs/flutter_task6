import 'package:flutter/material.dart';
import 'package:practice_project/themes/app_colors.dart';

class MyMediaGrid extends StatelessWidget {
  MyMediaGrid({
    Key? key,
  }) : super(key: key);

  List<String> image = [
    "images/grid1.png",
    "images/grid2.png",
    "images/grid3.png",
    "images/grid4.png",
    "images/grid5.png",
    "images/grid6.png",
    "images/grid7.png",
    "images/grid8.png",
    "images/grid9.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: GridView.builder(
        // physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 130,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 17,
            mainAxisSpacing: 13),
        itemCount: 9,
        itemBuilder: (BuildContext ctx, index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: AssetImage(image[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                right: 3,
                top: 3,
                child: InkWell(
                    onTap: () {}, child: Image.asset('images/MediaAdd.png')),
              ),
            ],
          );
        },
      ),
    );
  }
}
