import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/text_styles.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                        primary: AppColors.selectbuttons),
                    onPressed: () {},
                    child: Text(
                      'DELETE',
                      style: TextStyles.elevbtn14w500
                          .copyWith(color: Color(0xffFFFFFF)),
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
                      style: TextStyles.elevbtn14w500
                          .copyWith(color: AppColors.selectbuttons),
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
    );
  }
}
