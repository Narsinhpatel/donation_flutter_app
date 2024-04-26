import 'package:donation_flutter_app/routes/route_names.dart';
import 'package:donation_flutter_app/utils/app_static_data/image_strings.dart';
import 'package:donation_flutter_app/utils/app_static_data/nearby_cases_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NearbyCases extends StatelessWidget {
  NearbyCases({super.key});

  List<Map<String, dynamic>> nearbyCasesList = getNearbyCasesList();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: nearbyCasesList.length,
      itemBuilder: (context, index) {
        Map<String, dynamic> data= nearbyCasesList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: InkWell(
            onTap: (){
              Get.toNamed(RouteNames.DONATION_DETAILS_ROUTE);
            },
            child: SizedBox(
              width: 380,
              height: 100,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      data['img'],
                      height: 100,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              data['title'],
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(31, 113, 118, 1)
                              ),
                            ),
                          ),
                          Text(
                            data['subtitle'],
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
