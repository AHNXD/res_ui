import 'package:flutter/material.dart';

const double tvWebBreakpoint = 2000;
const double webTabletBreakpoint = 875;
const double tabletMobileBreakpoint = 600;

class ResponsiveWidget extends StatelessWidget {
  final Widget? tv;
  final Widget? web;
  final Widget? tablet;
  final Widget? mobile;
  const ResponsiveWidget(
      {super.key, this.tv, this.web, this.tablet, this.mobile});

  @override
  Widget build(BuildContext context) {
    return Responsive.isTv(context)
        ? tv!
        : Responsive.isWeb(context)
            ? web!
            : Responsive.isTablet(context)
                ? tablet!
                : mobile!;
  }
}

class Responsive {
  static bool isTv(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= tvWebBreakpoint;
  static bool isWeb(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= webTabletBreakpoint &&
      MediaQuery.sizeOf(context).width <= tvWebBreakpoint;
  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= tabletMobileBreakpoint &&
      MediaQuery.sizeOf(context).width <= webTabletBreakpoint;
  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width <= tabletMobileBreakpoint;
}
