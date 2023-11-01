import 'package:flutter/material.dart';
import 'package:login_pages/src/pages/page1/sign_up.dart';
import 'package:login_pages/src/pages/page2/log_in.dart';
import 'package:login_pages/src/pages/page3/forget_password.dart';

class RoutesPath {
  static final routes = <String, WidgetBuilder>{
    '/': (context) => const SignUp(),                  //defaultpage
    '/signup': (context) => const SignUp(),
    '/login': (context) => const LogIn(),
    '/forgetpassword': (context) => const ForgetPassword(),
  };
}
