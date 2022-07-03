import 'package:flutter/material.dart';

import '../resources/app_images.dart';
import '../themes/app_colors.dart';
import '../themes/text_styles.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 121, vertical: 24),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(300),
                ),
                child: Image.asset(AppImages.profile),
                height: 118,
                width: 118,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: FloatingActionButton.small(
                    splashColor: Colors.pink,
                    backgroundColor: AppColors.fbtn6200EE,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      size: 24,
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.5, color: Colors.white),
                        borderRadius: BorderRadius.circular(100))),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Tiana Rosser',
            style: TextStyles.black16w400,
          ),
          Text(
            'Developer',
            style: TextStyles.grey12w400,
          )
        ],
      ),
    );
  }
}
