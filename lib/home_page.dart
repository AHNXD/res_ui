import 'package:flutter/material.dart';
import 'package:res_ui/home_page/home_page_mobile.dart';
import 'package:res_ui/home_page/home_page_tablet.dart';
import 'package:res_ui/home_page/home_page_tv.dart';
import 'package:res_ui/home_page/home_page_web.dart';
import 'package:res_ui/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: ResponsiveWidget(
                tv: HomePageTv(),
                web: HomePageWeb(),
                tablet: HomePageTablet(),
                mobile: HomePageMobile())));
  }
}
