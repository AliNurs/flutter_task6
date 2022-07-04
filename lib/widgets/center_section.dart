import 'package:flutter/material.dart';

import 'package:practice_project/resources/friends_section.dart';
import '../themes/app_colors.dart';
import '../themes/text_styles.dart';
import 'select_listview.dart';

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
          ),

          Text(
            'Select type',
            style: TextStyles.black16w400,
          ),

          MyListView(),
          //  ListView.builder(itemBuilder: ,scrollDirection: Axis.horizontal,),
          Divider(
            color: AppColors.dividerColor,
          ),
          Text(
            'Friends',
            style: TextStyles.black16w400,
          ),

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
