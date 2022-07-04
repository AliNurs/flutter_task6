import 'package:flutter/material.dart';
import 'package:practice_project/widgets/bottom_media_section.dart';

import 'package:practice_project/widgets/center_section.dart';
import 'package:practice_project/widgets/top_profile_section.dart';
import 'themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgE5E5E5,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(
                Icons.menu,
              ),
              onPressed: () {},
              color: AppColors.w500size20,
            ),
          )
        ],
        // leading: Icon(Icons.arrow_back),
        title: Text(
          'Profile',
          style: TextStyle(
              color: AppColors.w500size20,
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
        elevation: 1,
      ),
      body: ListView(
        children: [
          const ProfileSection(),
          const CenterSection(),
          Container(height: 360, width: 350, child: MyMediaGrid()),
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
                      child: Text(
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
                      style:
                          ElevatedButton.styleFrom(primary: AppColors.bgFFFFFF),
                      onPressed: () {},
                      child: Text(
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
          Divider(
            thickness: 2,
            indent: 160,
            endIndent: 160,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
