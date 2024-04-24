import 'package:donation_flutter_app/utils/functions/height_width/height_width.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  int page;
  ProgressBar({super.key, required this.page});

  static const double selectedPageHeight = 3;
  static const double unSelectedPageHeight = 2;

  static const Color selectedColor = Color.fromRGBO(31, 135, 142, 1);
  static const Color unSelectedColor = Color.fromRGBO(217, 217, 217, 1);



  @override
  Widget build(BuildContext context) {

    List<Widget> getBars(int pagesCount){
      List<Widget> bars = <Widget>[];
      for(int i=1; i<=pagesCount; i++){
        bars.add(Container(
          height: page == i ? selectedPageHeight : unSelectedPageHeight,
          width: calculateWidth(0.19, context),
          decoration: BoxDecoration(
            color: page == i ? selectedColor : unSelectedColor,
            borderRadius: BorderRadius.circular(5),
          ),
        ));
      }
      return bars;
    }

    return SizedBox(
      height: 10,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: getBars(4),
      ),
    );
  }
}
