import 'package:donation_flutter_app/pages/auth_pages/signin_page.dart';
import 'package:donation_flutter_app/pages/auth_pages/signup_welcome.dart';
import 'package:donation_flutter_app/pages/welcome_pages/welcome.dart';
import 'package:get/get.dart';

/*
 * @purpose :
 * appRoutes functions returns all named routes using GetX
 *
 * @created by : Vedant Rana
 */
appRoutes()=>[
  GetPage(
    name: '/welcome',
    page: () => const WelcomePage(),
  ),
  GetPage(
    name: '/signin',
    page: () => const SignIn(),
  ),
  GetPage(
    name: '/signup_welcome',
    page: () => const SignupWelcome(),
  ),
];