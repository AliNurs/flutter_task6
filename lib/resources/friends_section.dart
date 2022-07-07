import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/text_styles.dart';

class FriendClass extends StatelessWidget {
  const FriendClass({Key? key, required this.image, required this.name})
      : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.circle,
          ),
        ),
        title: Text(
          name,
          style: TextStyles.black16w400,
        ),
        subtitle: Text(
          'Developer',
          style: TextStyles.grey12w400,
        ),
        trailing: IconButton(
          icon: Icon(Icons.close_sharp),
          color: AppColors.closeicon,
          onPressed: () {},
        ),
      ),
    );
  }
}

class FriendSection extends StatelessWidget {
  FriendSection({
    Key? key,
  }) : super(key: key);

  List<String> name = [
    'Corey George',
    'Ahmad Vetrovs',
    'Cristofer Workman',
    'Tiana Korsgaard'
  ];

  List<String> image = [
    'images/developer1.png',
    'images/developer2.png',
    'images/developer3.png',
    'images/developer4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) =>
            FriendClass(image: image[index], name: name[index]),
        separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
        itemCount: name.length);
  }
}
