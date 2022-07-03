import 'package:flutter/material.dart';
import 'package:practice_project/app_colors.dart';
import 'package:practice_project/app_images.dart';
import 'package:practice_project/text_styles.dart';

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
        shadowColor: Colors.amber,
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
          Padding(
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
          ),
          Padding(
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

                FriendsClass(
                  name: 'Corey George',
                  image: AppImages.developer1,
                ),
                FriendsClass(
                  name: 'Ahmad Vetrovs',
                  image: AppImages.developer2,
                ),
                FriendsClass(
                  name: 'Cristofer Workman',
                  image: AppImages.developer3,
                ),
                FriendsClass(
                  name: 'Tiana Korsgaard',
                  image: AppImages.developer4,
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
          ),
          MyMediaGrid(),
        ],
      ),
    );
  }
}

class FriendsClass extends StatelessWidget {
  const FriendsClass({Key? key, required this.image, required this.name})
      : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
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
        Divider(
          color: AppColors.dividerColor,
          indent: 65,
        ),
      ],
    );
  }
}

class MyMediaGrid extends StatelessWidget {
  MyMediaGrid({Key? key}) : super(key: key);

  // final List<Map> myMedia =
  //     List.generate(9, (index) => {"id": index, "name": "Product $index"})
  //         .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 130,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 17,
              mainAxisSpacing: 13),
          itemCount: 9,
          itemBuilder: (BuildContext ctx, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      image: AssetImage("images/my.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close_outlined,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
