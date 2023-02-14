import 'package:dw9_delivery_app/app/core/provider/application_binding.dart';
import 'package:dw9_delivery_app/app/core/ui/styles/app_styles.dart';
import 'package:dw9_delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:dw9_delivery_app/app/core/ui/theme/theme_config.dart';
import 'package:dw9_delivery_app/app/pages/home/home_router.dart';
import 'package:dw9_delivery_app/app/pages/product_detail/product_detail_router.dart';
import 'package:dw9_delivery_app/app/pages/splash/splash_page.dart';
import 'package:dw9_delivery_app/apppages/auth/login/login_page.dart';
import 'package:dw9_delivery_app/apppages/auth/register/register_page.dart';
import 'package:flutter/material.dart';

class Dw9DeliveryApp extends StatelessWidget {
  const Dw9DeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: 'Delivery App',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => SplashPage(),
          '/home': (_) => HomeRouter.page,
          '/productDetail': (context) => ProductDetailRouter.page,
          '/auth/login': (context) => const LoginPage(),
          '/auth/register': (context) => const RegisterPage(),
        },
      ),
    );
  }
}
