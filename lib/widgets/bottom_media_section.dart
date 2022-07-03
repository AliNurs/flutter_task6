import 'package:flutter/material.dart';

class MyMediaGrid extends StatelessWidget {
  MyMediaGrid({Key? key}) : super(key: key);

  final List<Map> myMedia =
      List.generate(9, (index) => {"id": index, "": "$index"}).toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: GridView.builder(
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
                    image: AssetImage("images/my.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.close_outlined,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
