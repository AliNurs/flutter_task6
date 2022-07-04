import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,

      //color: Colors.lightGreenAccent.shade700,
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Row(
            children: [
              RepeatScrolList(
                type: 'Bold',
              ),
              RepeatScrolList(
                type: 'Mediym',
              ),
              RepeatScrolList(
                type: 'Light',
              ),
              RepeatScrolList(
                type: 'Back',
              ),
              RepeatScrolList(
                type: 'Regular',
              ),
            ],
          );
        }),
      ),
    );
  }
}

class RepeatScrolList extends StatelessWidget {
  const RepeatScrolList({Key? key, required this.type}) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(68),
        ),
        margin: EdgeInsets.only(left: 8, right: 8),
        child: Center(child: Text(type)),
        height: 32,
        width: 60,
      ),
    );
  }
}
