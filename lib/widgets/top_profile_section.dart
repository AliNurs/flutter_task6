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
              const CircleAvatar(
                backgroundImage: AssetImage(AppImages.avatar),
                radius: 59,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      color: AppColors.button6200EE,
                    ),
                    child: Image.asset('images/AvatarAdd.png'),
                  ),
                ),
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
          ),
        ],
      ),
    );
  }
}
