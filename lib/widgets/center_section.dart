import 'package:flutter/material.dart';

import 'package:practice_project/resources/friends_section.dart';

import '../themes/app_colors.dart';
import '../themes/text_styles.dart';

class CenterSection extends StatelessWidget {
  const CenterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Select type',
            style: TextStyles.black16w400,
          ),
          //  ListView.builder(itemBuilder: ,scrollDirection: Axis.horizontal,),
          Divider(
            color: Colors.black,
          ),
          Text(
            'Friends',
            style: TextStyles.black16w400,
          ),

          FriendSection(),

          SizedBox(
            height: 36,
            width: double.infinity,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: AppColors.bgFFFFFF,
                elevation: 2,
              ),
              onPressed: () {},
              label: Text(
                'ADD FREND',
                style: TextStyle(color: AppColors.w500size20),
              ),
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
            // indent: 65,
          ),
          Text(
            'My media',
            style: TextStyles.black16w400.copyWith(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
