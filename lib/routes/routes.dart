import 'package:donation_flutter_app/pages/auth_pages/child_support_page.dart';
import 'package:donation_flutter_app/pages/auth_pages/forget_password_page.dart';
import 'package:donation_flutter_app/pages/auth_pages/signin_page.dart';
import 'package:donation_flutter_app/pages/auth_pages/signup_page.dart';
import 'package:donation_flutter_app/pages/auth_pages/signup_welcome.dart';
import 'package:donation_flutter_app/pages/auth_pages/supportive_comm_page.dart';
import 'package:donation_flutter_app/pages/donation_pages/donation_details.dart';
import 'package:donation_flutter_app/pages/donation_pages/thank_you_page.dart';
import 'package:donation_flutter_app/pages/home_pages/home_body.dart';
import 'package:donation_flutter_app/pages/home_pages/home_page.dart';
import 'package:donation_flutter_app/pages/home_pages/inbox_page.dart';
import 'package:donation_flutter_app/pages/home_pages/notification_page.dart';
import 'package:donation_flutter_app/pages/welcome_pages/welcome.dart';
import 'package:get/get.dart';

import '../pages/auth_pages/signin_second_option_page.dart';
import 'package:donation_flutter_app/pages/home_pages/settings_page.dart';
import 'package:donation_flutter_app/pages/welcome_pages/welcome.dart';
import 'package:get/get.dart';

import '../pages/donation_pages/donation_amount_selection.dart';
import '../pages/donation_pages/donation_page.dart';
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
    name: '/welcome',
    page: () => const WelcomePage(),
  ),
  GetPage(
    name: '/signin',
    page: () => const SignIn(),
  ),
  GetPage(
    name: '/forget_password',
    page: () => const ForgetPassword(),
  ),
  GetPage(
    name: '/signup_welcome',
    page: () => const SignupWelcome(),
  ),
  GetPage(
    name: '/signup',
    page: () => const Signup(),
  ),
  GetPage(
    name: '/signup_second',
    page: () => const SignupSecond(),
  ),
  GetPage(
    name: '/supportive_community',
    page: () => const SupportiveCommunity(),
  ),
  GetPage(
    name: '/child_support',
    page: () => const ChildSupport(),
  ),
  GetPage(
    name: '/home',
    page: () => const HomeBody(),
  ),

  GetPage(
    name: '/settings',
    page: () => const SettingsPage(),
    transition: Transition.leftToRight,
    transitionDuration: const Duration(milliseconds: 300),
  ),
  GetPage(
    name: '/inbox',
    page: () => const InboxPage(),
  ),
  GetPage(
    name: '/notification',
    page: () => const NotificationPage(),
  ),
  GetPage(
    name: '/payment-methods',
    page: () => const PaymentMethods(),
  ),
  GetPage(
    name: '/confirm-payment',
    page: () => const ConfirmPayment(),
  ),
  GetPage(
    name: '/received-otp',
    page: () => const ReceivedOtp(),
  ),
GetPage(
    name: '/thank-you-page',
    page: () => const ThankYouPage(),
  ),
GetPage(
    name: '/donation-amount-select',
    page: () => DonationSelectionPage(),
  ),
GetPage(
    name: '/donation-details',
    page: () => const DonationDetails(),
  ),

];