import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child:  IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
        ),
      ),


    );
  }
}
