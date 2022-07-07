import 'package:flutter/material.dart';
import 'package:practice_project/themes/app_colors.dart';

import 'resources/app_images.dart';
import 'part widgets/bottom_buttons.dart';
import 'widgets/bottom_media_section.dart';
import 'widgets/center_section.dart';
import 'widgets/select_listview.dart';
import 'widgets/top_profile_section.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgFFFFFF,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset(AppImages.menu))
        ],
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: ListView(
        children: [
          const ProfileSection(),
          MyListView(),
          const CenterSection(),
          Container(
            height: 350,
            child: MyMediaGrid(),
          ),
          const SizedBox(
            height: 16,
          ),
          const BottomButtons(),
        ],
      ),
    );
  }
}
