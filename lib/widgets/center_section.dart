import 'package:flutter/material.dart';

import 'package:practice_project/part%20widgets/friends_section.dart';
import '../themes/app_colors.dart';
import '../themes/text_styles.dart';

class CenterSection extends StatelessWidget {
  const CenterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: AppColors.dividerColor,
            thickness: 1,
          ),
          SizedBox(height: 6),
          Text(
            'Friends',
            style: TextStyles.black16w400.copyWith(letterSpacing: 0.44),
          ),
          SizedBox(height: 8),
          Container(
            height: 280,
            child: FriendSection(),
          ),
          SizedBox(
            height: 38,
          ),
          SizedBox(
            height: 36,
            width: double.infinity,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: AppColors.bgFFFFFF,
                elevation: 2,
              ),
              onPressed: () {},
              label: Text('ADD FREND', style: TextStyles.elevbtn14w500),
              icon: Icon(
                Icons.add,
                color: AppColors.w500size20,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: AppColors.dividerColor,
            thickness: 2,
          ),
          SizedBox(
            height: 16,
          ),
          Text('My media', style: TextStyles.media24w400),
        ],
      ),
    );
  }
}
