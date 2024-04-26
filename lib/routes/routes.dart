import 'package:donation_flutter_app/pages/auth_pages/child_support_page.dart';
import 'package:donation_flutter_app/pages/auth_pages/forget_password_page.dart';
import 'package:donation_flutter_app/pages/auth_pages/signin_page.dart';
import 'package:donation_flutter_app/pages/auth_pages/signup_page.dart';
import 'package:donation_flutter_app/pages/auth_pages/signup_welcome.dart';
import 'package:donation_flutter_app/pages/auth_pages/supportive_comm_page.dart';
import 'package:donation_flutter_app/pages/donation_pages/donation_details.dart';
import 'package:donation_flutter_app/pages/donation_pages/thank_you_page.dart';
import 'package:donation_flutter_app/pages/home_pages/home_body.dart';
import 'package:donation_flutter_app/pages/home_pages/inbox_page.dart';
import 'package:donation_flutter_app/pages/home_pages/notification_page.dart';
import 'package:donation_flutter_app/pages/welcome_pages/welcome.dart';
import 'package:donation_flutter_app/routes/route_names.dart';
import 'package:get/get.dart';

import '../pages/auth_pages/signin_second_option_page.dart';
import 'package:donation_flutter_app/pages/home_pages/settings_page.dart';

import '../pages/donation_pages/donation_amount_selection.dart';
import '../pages/payment_pages/confirm_page.dart';
import '../pages/payment_pages/otp_page.dart';
import '../pages/payment_pages/paymant_page.dart';

/*
 * @purpose :
 * appRoutes functions returns all named routes using GetX
 *
 * @created by : Vedant Rana
 */
appRoutes()=>[
  GetPage(
    name: RouteNames.ON_BOARDING_ROUTE,
    page: () => const WelcomePage(),
  ),
  GetPage(
    name: RouteNames.SIGN_IN_ROUTE,
    page: () => const SignIn(),
  ),
  GetPage(
    name: RouteNames.FORGET_PASSWORD_ROUTE,
    page: () => const ForgetPassword(),
  ),
  GetPage(
    name: RouteNames.SIGNUP_WELCOME_ROUTE,
    page: () => const SignupWelcome(),
  ),
  GetPage(
    name: RouteNames.SIGNUP_ROUTE,
    page: () => const Signup(),
  ),
  GetPage(
    name: RouteNames.SIGNUP_SECOND_ROUTE,
    page: () => const SignupSecond(),
  ),
  GetPage(
    name: RouteNames.SUPPORTIVE_COMMUNITY_ROUTE,
    page: () => const SupportiveCommunity(),
  ),
  GetPage(
    name: RouteNames.CHILD_SUPPORT_ROUTE,
    page: () => const ChildSupport(),
  ),
  GetPage(
    name: RouteNames.HOME_BODY_ROUTE,
    page: () => const HomeBody(),
  ),

  GetPage(
    name: RouteNames.SETTINGS_ROUTE,
    page: () => const SettingsPage(),
    transition: Transition.leftToRight,
    transitionDuration: const Duration(milliseconds: 300),
  ),
  GetPage(
    name: RouteNames.INBOX_ROUTE,
    page: () => const InboxPage(),
  ),
  GetPage(
    name: RouteNames.NOTIFICATION_ROUTE,
    page: () => const NotificationPage(),
  ),
  GetPage(
    name: RouteNames.PAYMENT_METHODS_ROUTE,
    page: () => const PaymentMethods(),
  ),
  GetPage(
    name: RouteNames.CONFIRM_PAYMENT_ROUTE,
    page: () => const ConfirmPayment(),
  ),
  GetPage(
    name: RouteNames.RECEIVED_OTP_ROUTE,
    page: () => const ReceivedOtp(),
  ),
GetPage(
    name: RouteNames.THANK_YOU_ROUTE,
    page: () => const ThankYouPage(),
  ),
GetPage(
    name: RouteNames.DONATION_AMOUNT_ROUTE,
    page: () => DonationSelectionPage(),
  ),
GetPage(
    name: RouteNames.DONATION_DETAILS_ROUTE,
    page: () => const DonationDetails(),
  ),

];