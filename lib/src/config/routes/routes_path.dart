import 'package:flutter/material.dart';
import 'package:login_pages/src/pages/page1/sign_up.dart';
import 'package:login_pages/src/pages/page2/log_in.dart';
import 'package:login_pages/src/pages/page3/forget_password.dart';
import 'route_names.dart';

class RoutesPath {
  static final routes = <String, WidgetBuilder>{
    Routes.signUpPage: (context) => const SignUp(), //defaultpage
    Routes.logInPage: (context) => const LogIn(),
    Routes.forgotPasswordPage: (context) => const ForgetPassword(),
  };
}
