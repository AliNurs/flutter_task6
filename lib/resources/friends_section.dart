import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/text_styles.dart';
import 'app_images.dart';

class FriendSection extends StatelessWidget {
  const FriendSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        FriendClass(
          name: 'Corey George',
          image: AppImages.developer1,
        ),
        Divider(
          color: AppColors.dividerColor,
          indent: 65,
        ),
        FriendClass(
          name: 'Ahmad Vetrovs',
          image: AppImages.developer2,
        ),
        Divider(
          color: AppColors.dividerColor,
          indent: 65,
        ),
        FriendClass(
          name: 'Cristofer Workman',
          image: AppImages.developer3,
        ),
        Divider(
          color: AppColors.dividerColor,
          indent: 65,
        ),
        FriendClass(
          name: 'Tiana Korsgaard',
          image: AppImages.developer4,
        ),
      ],
    );
  }
}

class FriendClass extends StatelessWidget {
  const FriendClass({Key? key, required this.image, required this.name})
      : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }
}
