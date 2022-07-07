import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_project/resources/app_images.dart';
import 'package:practice_project/widgets/bottom_media_section.dart';

import 'package:practice_project/widgets/center_section.dart';
import 'package:practice_project/widgets/top_profile_section.dart';
import 'themes/app_colors.dart';
import 'widgets/select_listview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyPage',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          title: Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Image.asset('images/menu.png'))
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
              height: 380,
              child: MyMediaGrid(),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: 156,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: AppColors.button6200EE),
                        onPressed: () {},
                        child: const Text(
                          'DELETE',
                          style: TextStyle(
                              color: AppColors.bgFFFFFF,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      height: 36,
                      width: 156,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: AppColors.bgFFFFFF),
                        onPressed: () {},
                        child: const Text(
                          'ADD',
                          style: TextStyle(
                              color: AppColors.button6200EE,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {},
              child: const Divider(
                thickness: 2,
                indent: 160,
                endIndent: 160,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
