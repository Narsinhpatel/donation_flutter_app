import 'package:donation_flutter_app/utils/app_static_data/image_strings.dart';

List<Map<String, dynamic>> getNearbyCasesList(){
  return [
    {
      'title': "Orphans",
      'subtitle' : "Donate to the Queen Rania Association for Orphans",
      'img' : ImageString.WELCOME_GRANDMA_IMG,
    },
    {
      'title': "Health",
      'subtitle' : "Needs O+ Blood Type in Hussain Hospital",
      'img' : ImageString.WELCOME_HAND_IMG,
    },
    {
      'title': "Education",
      'subtitle' : "Needs 50 JOD to complete my university registration",
      'img' : ImageString.TITLE_CARD_IMG_1,
    },
    {
      'title': "Community",
      'subtitle' : "Needs 30 JOD to pay my monthly rent",
      'img' : ImageString.TITLE_CARD_IMG_4,
    },
    {
      'title': "Health",
      'subtitle' : "Family of five members needs medical support",
      'img' : ImageString.TITLE_CARD_IMG_2 ,
    },
    {
      'title': "Community",
      'subtitle' : "Needs 120 JOD to buy certain medicine for oldman",
      'img' :  ImageString.TITLE_CARD_IMG_1,
    },

  ];
}