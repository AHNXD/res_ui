import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 1.sw,
              height: 60,
              color: Colors.cyan[600],
              child: Center(
                  child: Text(
                "AppBar",
                style: TextStyle(color: Colors.white, fontSize: 12.sp),
              )),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.only(end: 8.0, top: 8.0),
                      child: Container(
                        color: Colors.cyan[900],
                        child: Center(
                            child: Text(
                          "Body",
                          style:
                              TextStyle(color: Colors.white, fontSize: 14.sp),
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: 1.sw,
                height: 60,
                color: Colors.cyan[600],
                child: Center(
                    child: Text(
                  "NavBar",
                  style: TextStyle(color: Colors.white, fontSize: 12.sp),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
