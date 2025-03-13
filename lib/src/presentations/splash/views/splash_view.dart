import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nest_balance/src/core/core.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  double progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    _startProgress();
  }

  void _startProgress() {
    Future.delayed(const Duration(milliseconds: 250), () {
      if (progressValue < 1.0) {
        setState(() {
          progressValue += 0.05;
        });
        _startProgress();
      } else {
        context.go('/home_view');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundImages: 'assets/images/splash.png',
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              SvgPicture.asset(
                'assets/svg/mech.svg',
                width: 70.w,
                fit: BoxFit.cover,
              ),
              Text(
                'NestBalance',
                style: GoogleFonts.langar(
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Text(
                'loading...',
                textAlign: TextAlign.justify,
                style: GoogleFonts.kurale(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Container(
                        height: 2.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff3C3056),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 2.h,
                        width:
                            MediaQuery.of(context).size.width * progressValue,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.h),
            ],
          ),
        ],
      ),
    );
  }
}
