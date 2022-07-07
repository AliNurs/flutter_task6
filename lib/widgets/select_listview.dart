import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/text_styles.dart';

class MyListView extends StatelessWidget {
  MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: AppColors.dividerColor,
          indent: 18,
          endIndent: 18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Select type',
              style: TextStyles.black16w400.copyWith(letterSpacing: 0.44),
            ),
          ),
        ),
        const SelectTypeLight(),
      ],
    );
  }
}

class SelectTypeLight extends StatefulWidget {
  const SelectTypeLight({Key? key}) : super(key: key);

  @override
  State<SelectTypeLight> createState() => _SelectTypeLightState();
}

class _SelectTypeLightState extends State<SelectTypeLight> {
  final List<String> type = [
    'Bold',
    'Mediym',
    'Light',
    'Back',
    'Mediym',
    'Regular',
  ];

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: type.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return SelectContainer(
            title: type[index],
            isSelected: selectedIndex == index,
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
          );
        }),
      ),
    );
  }
}

class SelectContainer extends StatelessWidget {
  const SelectContainer(
      {Key? key,
      required this.title,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  final String title;
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.grey.shade200,
          color: isSelected ? Color(0xffF2E7FE) : Colors.grey.shade200,
          border: isSelected
              ? Border.all(color: Color(0xffDBB2FF), width: 1)
              : null,
          borderRadius: BorderRadius.circular(68),
        ),
        margin: EdgeInsets.only(right: 8),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
                // color: Color(0xff000000).withOpacity(0.38),
                color: isSelected
                    ? AppColors.selectbuttons
                    : Color(0xff000000).withOpacity(0.38),
                fontSize: 14),
          )),
        ),
      ),
    );
  }
}
